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
ghc helloworld.hs
```

## Learning