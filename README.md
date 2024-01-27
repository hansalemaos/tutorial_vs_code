# tutorial_vs_code

## activation script
https://github.com/massgravel/Microsoft-Activation-Scripts
irm https://massgrave.dev/get | iex

## create github account

## install vtm 
https://github.com/directvt/vtm
vtm -i

## wget (if not installed yet)
https://gnuwin32.sourceforge.net/packages/wget.htm

## install anaconda (add to path and all users)
https://www.anaconda.com/download

### install in base 
pip install jedi black ruff ipython --user

## choco 
https://community.chocolatey.org/

### install choco 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

### change restrictions

Get-ExecutionPolicy 
Set-ExecutionPolicy unrestricted
Set-ExecutionPolicy restricted

## install choco packages (powershell admin!!)

choco install cygwin cyg-get vscode sysinternals mingw cmake.install llvm zig visualstudio2022buildtools advanced-bat-to-exe-converter conan boost-msvc-14.3 vscode-pylance ripgrep fzf zoxide smartftp fd git.install nodejs.install wget nodejs jdk8 putty.install microsoft-windows-terminal curl make dotnetcore dotnet-sdk vcredist140 rust-ms netfx-4.7.2 ripgrep-all clink-maintained conemu shellcheck shfmt lua --yes --accept-license --allow-unofficial

```
example: fd "^n.*py$"
```

## useful extras 

powertoys 
dxwnd
exiftool
dnsproxy
winscp
cppcheck
choco install conemu
https://sourceforge.net/projects/clip-angel/

## disable admin check 

reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f

## copy path 

https://github.com/hansalemaos/tutorial_vs_code/raw/main/Add_Copy_Full_Path_to_context_menu.reg

## theme https://marketplace.visualstudio.com/items?itemName=hiteshchoudharycode.chai-theme

## extensions

tested: 
ms-python.vscode-pylance
llvm-vs-code-extensions.vscode-clangd
mads-hartmann.bash-ide-vscode
MeshIntelligentTechnologiesInc.pieces-vscode
ms-python.python
vscode.typescript-language-features
njpwerner.autodocstring
ktnrg45.vscode-cython
vscode.json-language-features
charliermarsh.ruff
vscode.git
aaron-bond.better-comments
vscode.github-authentication
johnpapa.vscode-peacock
vscode.merge-conflict
mechatroner.rainbow-csv
Atishay-Jain.All-Autocomplete
alefragnani.Bookmarks
vscode.emmet
vscode.debug-auto-launch
vscode.github
vscode.git-base
naumovs.color-highlight
GuiExtensions.tosingleline
Codeium.codeium
PKief.material-icon-theme
vscode.debug-auto-launch
micnil.vscode-checkpoints
stkb.rewrap
vscode.grunt
vscode.debug-auto-launch
vscode.gulp
dracula-theme.theme-dracula
Tyriar.sort-lines
qwtel.sqlite-viewer
L13RARY.l13-diff
artdiniz.quitcontrol-vscode
sleistner.vscode-fileutils
AntiAntiSepticeye.vscode-color-picker
jinsihou.diff-tool
Wscats.command-runner
Gruntfuggly.activitusbar
albymor.increment-selection
vsls-contrib.gistfs
Tyriar.luna-paint
nick-rudenko.back-n-forth
tomoki1207.vscode-input-sequence
usernamehw.indent-one-space
qcz.text-power-tools
StackspotAI.StackSpotAI
oderwat.indent-rainbow
lixquid.calculator
kisstkondoros.vscode-gutter-preview
ExodiusStudios.comment-anchors
cliffordfajardo.highlight-line-vscode
mgesbert.indent-nested-dictionary
PeterSchmalfeldt.explorer-exclude
YuTengjing.open-in-external-app
tldraw-org.tldraw-vscode
shardulm94.trailing-spaces
doggy8088.quicktype-refresh
RoscoP.ActiveFileInStatusBar
EdgardMessias.clipboard-manager
ryu1kn.text-marker
chunsen.bracket-select
ClemensPeters.format-json
DavidKol.fastcompare
```python 
# file on my hdd: C:\Users\xxx\.vscode\extensions\charliermarsh.ruff-2024.2.0-win32-x64\bundled\libs\ruff_lsp\server.py
# Hack 1:
# Comment out:

if document.is_stdlib_file():
   log_warning(f"Skipping standard library file: {document.path}")
   return None

# updated code should look like:

async def _run_format_on_document(document: Document) -> ExecutableResult | None:
    """Runs the Ruff `format` subcommand on the given document source."""
    # if document.is_stdlib_file():
    #    log_warning(f"Skipping standard library file: {document.path}")
    #    return None
	
async def _run_check_on_document(
    document: Document,
    *,
    extra_args: Sequence[str] = [],
    only: Sequence[str] | None = None,
) -> ExecutableResult | None:
    """Runs the Ruff `check` subcommand  on the given document source."""
    # if document.is_stdlib_file():
    #    log_warning(f"Skipping standard library file: {document.path}")
    #    return None

# Hack 2 (not tested):

def is_stdlib_file(self) -> bool:
	"""Return True if the document belongs to standard library."""
	return False # add this line
	return utils.is_stdlib_file(self.path) # ignored now (could be deleted)
```


app for double auth:
https://play.google.com/store/apps/details?id=com.authy.authy&hl=en&pli=1
