# tutorial_vs_code
## clink for cmd history:
https://github.com/chrisant996/clink/releases/tag/v1.6.1

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

choco install cygwin cyg-get vscode sysinternals mingw cmake.install llvm zig visualstudio2022buildtools advanced-bat-to-exe-converter conan boost-msvc-14.3 vscode-pylance ripgrep fzf zoxide smartftp fd git.install nodejs.install wget nodejs jdk8 putty.install microsoft-windows-terminal curl make dotnetcore dotnet-sdk vcredist140 rust-ms netfx-4.7.2 ripgrep-all --yes --accept-license --allow-unofficial

```
example: fd "^n.*py$"
```

## Windows terminal 
https://github.com/microsoft/terminal

## useful extras 

powertoys 
dxwnd
exiftool
dnsproxy
winscp
https://sourceforge.net/projects/clip-angel/

## disable admin check 

reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f

## copy path 

https://github.com/hansalemaos/tutorial_vs_code/raw/main/Add_Copy_Full_Path_to_context_menu.reg

## cygwin

choco install cygwin cyg-get

## extensions

https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree
https://docs.pieces.app/installation-getting-started/windows
https://code.pieces.app/plugins/vscode
https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring
???
https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-environment-manager&ssr=false#review-details
https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter
https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments
https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode#review-details
https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments
https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff
https://marketplace.visualstudio.com/items?itemName=alefragnani.Bookmarks
https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager
https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons
https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock
https://kinsta.com/blog/vscode-extensions/


2211896472.snippets
aaron-bond.better-comments
akiramiyakoda.cppincludeguard
alefragnani.Bookmarks
alefragnani.project-manager
amiralizadeh9480.cpp-helper
Atishay-Jain.All-Autocomplete
charliermarsh.ruff
exiasr.hadolint
FederAndInk.cpp-reference-and-documentation
formulahendry.code-runner
foxundermoon.shell-format
GitHub.copilot
GitHub.copilot-chat
GrapeCity.gc-excelviewer
Gruntfuggly.todo-tree
guyskk.language-cython
jeff-hykin.better-cpp-syntax
jeff-hykin.better-dockerfile-syntax
jeff-hykin.better-shellscript-syntax
josefpihrt-vscode.snippetica-cpp
kaiwood.center-editor-window
ktnrg45.vscode-cython
mads-hartmann.bash-ide-vscode
meronz.manpages
MeshIntelligentTechnologiesInc.pieces-vscode
micnil.vscode-checkpoints
mishkinf.goto-next-previous-member
mishkinf.vscode-edits-history
ms-python.python
ms-python.vscode-pylance
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-toolsai.vscode-jupyter-cell-tags
ms-toolsai.vscode-jupyter-slideshow
ms-vscode.cmake-tools
ms-vscode.cpptools
ms-vscode.cpptools-extension-pack
ms-vscode.cpptools-themes
naumovs.color-highlight
njpwerner.autodocstring
peaceshi.syntax-highlight
RafaelChen.cpp-extension-pack
Remisa.shellman
rogalmic.bash-debug
ryu1kn.edit-with-shell
tetradresearch.vscode-h2o
timonwong.shellcheck
trixnz.go-to-method
twxs.cmake
vadimcn.vscode-lldb
VisualStudioExptTeam.intellicode-api-usage-examples
VisualStudioExptTeam.vscodeintellicode
vscode-icons-team.vscode-icons
woozy-masta.shell-script-ide
wwm.better-align
xshrim.txt-syntax
yzhang.markdown-all-in-one


tested: naumovs.color-highlight
@id:mechatroner.rainbow-csv
@ext:MeshIntelligentTechnologiesInc.pieces-vscode
@ext:Atishay-Jain.All-Autocomplete
@ext:charliermarsh.ruff
@ext:njpwerner.autodocstring
@ext:aaron-bond.better-comments
@ext:alefragnani.Bookmarks
@ext:johnpapa.vscode-peacock


choco install cppcheck

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