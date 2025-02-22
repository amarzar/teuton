[<< back](README.md)

# Example: learn-09-preserve

> This example is on GitHub repository at `examples/learn-09-preserve/`.

Every time we run teuton test, older output report files are overwritten with new reports. if you want to preserve old versions then use `preserve`.

With `preserve` option we keep older copies.

1. [Execution section](#execution-section)
2. [Result](#result)

## Execution section

Take a look at our test execution section (Play):
```ruby
play do
  show
  export preserve: true
end
```

> More information about [export](../dsl/execution/export.md) keyword.

## Result

Example, executing `teuton run example/learn-09-preserve` twice:

```
var
└── learn-09-preserve
    ├── 20200519-113035
    │   ├── case-01.txt
    │   ├── moodle.csv
    │   └── resume.txt
    ├── 20200520-113039
    │   ├── case-01.txt
    │   ├── moodle.csv
    │   └── resume.txt
    ├── case-01.txt
    ├── moodle.csv
    └── resume.txt
```
