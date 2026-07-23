#!/usr/bin/env bash
set -euo pipefail
export PATH="/usr/bin:/bin:$PATH"

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

catalog="docs/governance/assurance/workforce-artifact-catalog.md"
legal_register="docs/governance/legal/workforce-legal-evidence-register.md"
tmp_dir="$(mktemp -d)"
cleanup() {
  case "$tmp_dir" in
    /tmp/*) rm -rf -- "$tmp_dir" ;;
    *) echo "ERROR: refusing to remove unexpected temp path: $tmp_dir" >&2 ;;
  esac
}
trap cleanup EXIT

fail() {
  echo "ERROR: $*" >&2
  exit 1
}

require_file() {
  [[ -f "$1" ]] || fail "missing file: $1"
}

require_file "$catalog"
require_file "$legal_register"

for number in $(seq -w 0 29); do
  require_file "docs/modules/HLC${number}/README.md"
done

module_count="$(find docs/modules -mindepth 1 -maxdepth 1 -type d -name 'HLC[0-9][0-9]' | wc -l | tr -d ' ')"
[[ "$module_count" == "30" ]] || fail "expected 30 HLC page directories, found $module_count"

grep '^| HX-ART-' "$catalog" > "$tmp_dir/catalog-artifacts.txt" || fail "catalog has no artifact rows"
cut -d'|' -f2 "$tmp_dir/catalog-artifacts.txt" | sed 's/^ *//;s/ *$//' > "$tmp_dir/artifact-ids.txt"

duplicate_artifacts="$(sort "$tmp_dir/artifact-ids.txt" | uniq -d)"
[[ -z "$duplicate_artifacts" ]] || fail "duplicate artifact IDs: $duplicate_artifacts"

if grep -Ev '^HX-ART-(GOV|HLC(0[0-9]|1[0-9]|2[0-9]))-[0-9]{3}$' "$tmp_dir/artifact-ids.txt" > "$tmp_dir/bad-artifact-ids.txt"; then
  fail "invalid artifact IDs: $(tr '\n' ' ' < "$tmp_dir/bad-artifact-ids.txt")"
fi

sort -t- -k3,3 -k4,4n "$tmp_dir/artifact-ids.txt" | awk -F- '
  {
    prefix=$3
    number=$4+0
    if (prefix != previous_prefix) {
      expected=1
      previous_prefix=prefix
    }
    if (number != expected) {
      printf "non-contiguous artifact sequence for %s: expected %03d, found %03d\n", prefix, expected, number > "/dev/stderr"
      exit 1
    }
    expected++
  }
' || fail "artifact IDs must be contiguous within each prefix"

allowed_types='^(policy|standard|procedure|plan|agreement|notice|form|checklist|assessment|decision|authorization|work-item|record|register|case-record|external-filing)$'
awk -F'|' '{ value=$4; gsub(/[`[:space:]]/, "", value); print value }' "$tmp_dir/catalog-artifacts.txt" | grep -Ev "$allowed_types" > "$tmp_dir/bad-types.txt" || true
[[ ! -s "$tmp_dir/bad-types.txt" ]] || fail "invalid artifact types: $(sort -u "$tmp_dir/bad-types.txt" | tr '\n' ' ')"

allowed_execution='^(no-signature|submission|delivery-receipt|acknowledgement|consent|bilateral-signature|authority-approval|external-filing)$'
awk -F'|' '{ value=$5; gsub(/[`[:space:]]/, "", value); print value }' "$tmp_dir/catalog-artifacts.txt" | grep -Ev "$allowed_execution" > "$tmp_dir/bad-execution.txt" || true
[[ ! -s "$tmp_dir/bad-execution.txt" ]] || fail "invalid execution modes: $(sort -u "$tmp_dir/bad-execution.txt" | tr '\n' ' ')"

allowed_classification='^(依法必須|公司政策選擇|個案待法律審查)$'
awk -F'|' '{ value=$10; gsub(/^[[:space:]]+|[[:space:]]+$/, "", value); print value }' "$tmp_dir/catalog-artifacts.txt" | grep -Ev "$allowed_classification" > "$tmp_dir/bad-classification.txt" || true
[[ ! -s "$tmp_dir/bad-classification.txt" ]] || fail "invalid legal classifications: $(sort -u "$tmp_dir/bad-classification.txt" | tr '\n' ' ')"

if grep -Ei '^\| HX-ART-.*(^|[[:space:]])(or|mixed)([[:space:]]|$)' "$catalog" > "$tmp_dir/compound-rows.txt"; then
  fail "compound or mixed artifact rows found"
fi

{
  grep '^| HX-TRG-' docs/enterprise/README.md
  grep '^| HX-TRG-' docs/modules/HLC[0-9][0-9]/README.md
} > "$tmp_dir/trigger-rows.txt" || fail "trigger matrices are missing"
cut -d'|' -f2 "$tmp_dir/trigger-rows.txt" | sed 's/^ *//;s/ *$//' > "$tmp_dir/trigger-ids.txt"

duplicate_triggers="$(sort "$tmp_dir/trigger-ids.txt" | uniq -d)"
[[ -z "$duplicate_triggers" ]] || fail "duplicate trigger definitions: $duplicate_triggers"

if grep -Ev '^HX-TRG-(GOV|HLC(0[0-9]|1[0-9]|2[0-9]))-[0-9]{3}$' "$tmp_dir/trigger-ids.txt" > "$tmp_dir/bad-trigger-ids.txt"; then
  fail "invalid trigger IDs: $(tr '\n' ' ' < "$tmp_dir/bad-trigger-ids.txt")"
fi

sort -t- -k3,3 -k4,4n "$tmp_dir/trigger-ids.txt" | awk -F- '
  {
    prefix=$3
    number=$4+0
    if (prefix != previous_prefix) {
      expected=1
      previous_prefix=prefix
    }
    if (number != expected) {
      printf "non-contiguous trigger sequence for %s: expected %03d, found %03d\n", prefix, expected, number > "/dev/stderr"
      exit 1
    }
    expected++
  }
' || fail "trigger IDs must be contiguous within each prefix"

grep -oE 'HX-TRG-(GOV|HLC[0-9]{2})-[0-9]{3}' "$tmp_dir/catalog-artifacts.txt" | sort -u > "$tmp_dir/referenced-triggers.txt"
sort -u "$tmp_dir/trigger-ids.txt" > "$tmp_dir/defined-triggers.txt"
comm -23 "$tmp_dir/referenced-triggers.txt" "$tmp_dir/defined-triggers.txt" > "$tmp_dir/missing-triggers.txt"
[[ ! -s "$tmp_dir/missing-triggers.txt" ]] || fail "artifact references undefined triggers: $(tr '\n' ' ' < "$tmp_dir/missing-triggers.txt")"
comm -13 "$tmp_dir/referenced-triggers.txt" "$tmp_dir/defined-triggers.txt" > "$tmp_dir/unreachable-triggers.txt"
[[ ! -s "$tmp_dir/unreachable-triggers.txt" ]] || fail "triggers produce no catalog artifact: $(tr '\n' ' ' < "$tmp_dir/unreachable-triggers.txt")"

grep -oE 'HX-ART-(GOV|HLC[0-9]{2})-[0-9]{3}' "$tmp_dir/trigger-rows.txt" | sort -u > "$tmp_dir/trigger-artifacts.txt"
sort -u "$tmp_dir/artifact-ids.txt" > "$tmp_dir/defined-artifacts.txt"
comm -23 "$tmp_dir/trigger-artifacts.txt" "$tmp_dir/defined-artifacts.txt" > "$tmp_dir/missing-artifacts.txt"
[[ ! -s "$tmp_dir/missing-artifacts.txt" ]] || fail "trigger matrix references undefined artifacts: $(tr '\n' ' ' < "$tmp_dir/missing-artifacts.txt")"

{
  grep '^| HX-ART-' docs/enterprise/README.md
  grep '^| HX-ART-' docs/modules/HLC[0-9][0-9]/README.md
} | cut -d'|' -f2 | sed 's/^ *//;s/ *$//' | sort -u > "$tmp_dir/page-artifacts.txt"
comm -3 "$tmp_dir/defined-artifacts.txt" "$tmp_dir/page-artifacts.txt" > "$tmp_dir/page-catalog-delta.txt"
[[ ! -s "$tmp_dir/page-catalog-delta.txt" ]] || fail "module/enterprise primary artifacts differ from catalog: $(tr '\n' ' ' < "$tmp_dir/page-catalog-delta.txt")"

for page in docs/modules/HLC[0-9][0-9]/README.md; do
  prefix="$(basename "$(dirname "$page")")"
  if grep '^| HX-ART-' "$page" | cut -d'|' -f2 | sed 's/^ *//;s/ *$//' | grep -Ev "^HX-ART-${prefix}-[0-9]{3}$" > "$tmp_dir/wrong-page-prefix.txt"; then
    fail "$page contains artifacts with the wrong primary prefix"
  fi
done

grep '^| TW-WF-' "$legal_register" | cut -d'|' -f2 | sed 's/^ *//;s/ *$//' | sort -u > "$tmp_dir/evidence-ids.txt"
awk -F'|' '{ print $9 }' "$tmp_dir/catalog-artifacts.txt" | grep -oE 'TW-WF-[A-Z0-9-]+' | sort -u > "$tmp_dir/referenced-evidence.txt" || true
comm -23 "$tmp_dir/referenced-evidence.txt" "$tmp_dir/evidence-ids.txt" > "$tmp_dir/missing-evidence.txt"
[[ ! -s "$tmp_dir/missing-evidence.txt" ]] || fail "catalog references undefined legal evidence: $(tr '\n' ' ' < "$tmp_dir/missing-evidence.txt")"

while IFS= read -r match; do
  source_file="${match%%:*}"
  link="${match#*:}"
  target="${link#*](}"
  target="${target%)}"
  target="${target%%#*}"
  [[ -z "$target" || "$target" =~ ^https?:// ]] && continue
  resolved="$(dirname "$source_file")/$target"
  [[ -e "$resolved" ]] || fail "broken relative Markdown link in $source_file: $target"
done < <(grep -RnoE --include='*.md' '\]\([^)]*\.md(#[^)]*)?\)' . || true)

if grep -RIl $'\xEF\xBF\xBD' --include='*.md' . > "$tmp_dir/replacement-character-files.txt"; then
  fail "UTF-8 replacement character found in: $(tr '\n' ' ' < "$tmp_dir/replacement-character-files.txt")"
fi

artifact_count="$(wc -l < "$tmp_dir/artifact-ids.txt" | tr -d ' ')"
trigger_count="$(wc -l < "$tmp_dir/trigger-ids.txt" | tr -d ' ')"
evidence_count="$(wc -l < "$tmp_dir/evidence-ids.txt" | tr -d ' ')"
echo "Governance validation passed: 30 HLC pages, $artifact_count artifacts, $trigger_count triggers, $evidence_count legal evidence IDs."
