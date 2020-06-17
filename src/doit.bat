del main.exe > nul
del *.hi > nul
del *.o > nul

ghc .\main.hs
.\main.exe