@echo off
set NVIM_APPNAME=nvim_csharp
wt.exe -w 0 new-tab --title "nvim-cs" pwsh.exe -NoExit -Command "& 'C:\Program Files\Neovim\bin\nvim.exe'  -- '%~1'"
