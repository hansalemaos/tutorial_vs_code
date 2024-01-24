# tutorial_vs_code
## clink for cmd history:
https://github.com/chrisant996/clink/releases/tag/v1.6.1

## install vtm 
https://github.com/directvt/vtm
vtm -i

## wget
https://gnuwin32.sourceforge.net/packages/wget.htm

## install anaconda (add to path and all users)
https://www.anaconda.com/download

### install in base 
pip install jedi black ipython --user

## choco 
https://community.chocolatey.org/

### install choco 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

### change restrictions

Get-ExecutionPolicy 
Set-ExecutionPolicy unrestricted
Set-ExecutionPolicy restricted

## install choco packages (powershell admin!!)

choco install vscode sysinternals mingw cmake.install llvm zig visualstudio2022buildtools advanced-bat-to-exe-converter conan boost-msvc-14.3 vscode-pylance ripgrep fzf zoxide vscodium.install smartftp fd --yes --accept-license --allow-unofficial

## Windows terminal 
https://github.com/microsoft/terminal

## useful extras 

https://sourceforge.net/projects/clip-angel/

## disable admin check 

reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f

## copy path 

https://github.com/hansalemaos/tutorial_vs_code/raw/main/Add_Copy_Full_Path_to_context_menu.reg