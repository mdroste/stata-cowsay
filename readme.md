
cowsay
=================================

[Overview](#overview)
| [Installation](#installation)
| [Usage](#usage)
| [Benchmarks](#benchmarks)
| [To-Do](#todo)
| [Acknowledgements](#acknowledgements)
| [License](#license)

Mooooo

`version 0.5 24jul2018`


Overview
---------------------------------

Much-needed [Cowsay](https://en.wikipedia.org/wiki/Cowsay) functionality for Stata.



Installation
---------------------------------

There are two options for installing regressby.

1. The most recent version can be installed from Github with the following Stata command:

```stata
net install cowsay, from(https://raw.githubusercontent.com/mdroste/stata-cowsay/master/)
```

2. A ZIP containing the program can be downloaded and manually placed on the user's adopath from Github.


Usage
---------------------------------

Consider the following example:

```stata
sysuse auto
reg price mpg
cowsay "Mooo! The R2 is `e(r2)'"
```

For more documentation, consult the help file in Stata:
```stata
help cowsay
```


Benchmarks
---------------------------------

![cowsay benchmark](benchmarks/cowsay_benchmark.png "cowsay benchmark")
  

Todo
---------------------------------

The following items will be addressed, maybe:

- [ ] Build a larger menagerie
- [ ] Provide a help file
- [ ] Finish checking off all of these items


Acknowledgements
---------------------------------

Cowsay, and probably all of the ASCII art herein, is older than me.


License
---------------------------------

Cows have no concept of software licensing.

