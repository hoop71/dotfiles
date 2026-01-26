# Contributing

## Reporting Issues

Include:
- OS/shell version (`sw_vers`, `zsh --version`)
- Steps to reproduce
- Error messages

## Pull Requests

### Guidelines

- Fork and create feature branch
- Make scripts idempotent
- Test on clean macOS if possible
- Use `shellcheck install.sh`
- Update README.md and CHANGELOG.md

### Code Style

```bash
# Use [[ ]] for tests
if [[ -f "$file" ]]; then

# Quote variables
echo "$VARIABLE"

# Lowercase local, UPPERCASE exports
local my_var="value"
export PATH="/usr/local/bin:$PATH"
```

### Commit Format

```
type(scope): short description

feat: New feature
fix: Bug fix
docs: Documentation
perf: Performance
```

### Testing

```bash
# Test install
./install.sh

# Check startup time
time zsh -i -c exit

# Validate syntax
zsh -n zsh/zshrc
starship config
```

## What We're Looking For

**High Priority**: Performance, bug fixes, better error handling, compatibility

**Low Priority**: Personal preferences, features that slow startup

MIT License - contributions will be licensed under MIT.
