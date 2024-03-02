# coverage_badge

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

This brick will generate the code coverage svg for your code that in turn can be used in as badge.
Following are the ranges for the badge color

```text
RED => (0, 50)
YELLOW => (50, 80)
GREEN => 80+
```


## Getting Started 🚀

It is easy to use:

```bash
$ mason make coverage_badge
```



This will prompt you to enter the percentage like below

```bash
$ Enter the your code coverage percentage? (0.0)
```

And that is it, you can find the coverage_badge svg file in your root project

You can also provide the output directory by:

```bash
$ mason make coverage_badge -o <output-directory>
```

For more info, you can also use:
```bash
$ mason -h
$ mason make -h
```