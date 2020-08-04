# HaskellDump
Dumping ground for Haskell

## Haskell Installation for Windows using [Chocolatey](https://chocolatey.org/install)

From Admin-Powershell run:

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Then from Admin command-prompt

```
choco install haskell-dev
```

For REPL:

```
ghci.exe
```

To compile:

```
ghc main.hs
```

## Learning

Mostly taken from [Derek Banas' video](https://www.youtube.com/watch?v=02_H3LjqMr8&list=PLGLfVvz_LVvSX7fVd4OUFp_ODd86H0ZIY&index=24&t=0s) and [Learn You a Haskell for Great Good!](https://www.youtube.com/watch?v=02_H3LjqMr8&list=PLGLfVvz_LVvSX7fVd4OUFp_ODd86H0ZIY&index=24&t=0s)

* [main.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/main.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [Maths.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/Maths.hs)  
* [Lists.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/Lists.hs)  
* WHAT ABOUT LIST COMPREHENSION?
* [Tuples.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/Tuples.hs)  
* [ConsoleIO.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/ConsoleIO.hs)  
* [Functions.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/Functions.hs)  
* [HigherOrderFunctions.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/HigherOrderFunctions.hs)  
* [Lambdas.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/Lambdas.hs)  
* [Conditionals.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/Conditionals.hs)  
* [Enums.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/Enums.hs)  
* [CustomTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/CustomTypes.hs)  
<!--
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
* [DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
-->