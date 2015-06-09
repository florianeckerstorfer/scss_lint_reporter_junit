
# jUnit formatter for SCSS-Lint

[SCSS-Lint](https://github.com/causes/scss-lint)


## Requirements

Ruby gem: scss-lint >= 0.32.0


## Installation

```bash
gem install scss_lint_reporter_junit
```

Check the installation:
```bash
scss-lint --require=scss_lint_reporter_junit --show-formatter
```
Output is something like this
```
Installed formatters:
 - JUnit
 - Config
 - Default
 - Files
 - JSON
```

## Usage

```bash
scss-lint --require=scss_lint_reporter_junit --format=JUnit foo.scss
```
[More detailed examples](https://github.com/causes/scss-lint/blob/master/README.md#usage)
