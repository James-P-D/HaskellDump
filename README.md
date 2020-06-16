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

[main.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/main.hs)  
[DataTypes.hs](https://github.com/James-P-D/HaskellDump/blob/master/src/DataTypes.hs)  
