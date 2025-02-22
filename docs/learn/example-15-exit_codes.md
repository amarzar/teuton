[<< back](README.md)

# Example: learn-15-exit_codes

> This example is on GitHub repository at `examples/learn-15-exit_codes/`.

_I am sorry! We have not solved the problem of getting the exit code of the commands so that it works for any platform. But we can help you do this work._

`result` stores information from the last command executed by a "run" action. [Offers many functions](../dsl/definition/result.md)) that transforms output data, but also we have been added tow more: first and last.

## Description

Take a look at this section:
```ruby
  target "Exist user root"
  run "id root;echo $?"
  expect_last "0"
```

It is posible to invoke the execution of several commands in sequence "cmd1;cmd2". Keep in mind that the last one must show the exit code. In the case of GNU/Linux is "echo $?", but it is different on others OOSS.

All terminal output generated by `run` action is captured (Use `result.debug` to show result content into screen), and as we need only the last line, we use `expect_last "0"`.

> More information about:
> * [expect](../dsl/definition/expect.md) keyword.
> * [result](../dsl/execution/result.md) keyword.
