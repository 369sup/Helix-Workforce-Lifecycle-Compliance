# Suggested Commands

Run with Git Bash while preserving repository cwd:

- Confirm root: `pwd && git rev-parse --show-toplevel`
- Inspect state: `git status --short --branch`
- Inspect changes: `git diff -- README.md AGENTS.md docs templates .serena/project.yml`
- Check whitespace: `git diff --check`
- List tracked/untracked docs narrowly: `find . -maxdepth 3 -type f -not -path './.git/*' -not -path './.idea/*' | sort`
- Serena memory references: `serena memories check` if the Serena CLI is available in the current shell.

Non-interactive Windows launcher: `C:\\Program Files\\Git\\bin\\bash.exe -c`; do not use `-lc`.
