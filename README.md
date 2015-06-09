jUnit formatter for SCSS-Lint
=============================

Developed by [Florian Eckerstorfer](https://florian.ec) and based on [scss_lint_reporter_checkstyle](https://github.com/Sweetchuck/scss_lint_reporter_checkstyle).


Requirements
------------

Ruby gem: [scss-lint](https://github.com/causes/scss-lint) >= 0.32.0


Installation
------------

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

Usage
-----

```bash
scss-lint --require=scss_lint_reporter_junit --format=JUnit foo.scss
```
[More detailed examples](https://github.com/causes/scss-lint/blob/master/README.md#usage)


Changelog
---------

### Version 0.1.1 (9 June 2015)

- Add missing line break between error messages

### Version 0.1 (9 June 2015)

- Initial release
