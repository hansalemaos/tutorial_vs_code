# tutorial_vs_code


[![YT](https://i.ytimg.com/vi/q4XqnLR2OBM/maxresdefault.jpg)](https://www.youtube.com/watch?v=q4XqnLR2OBM)
[https://www.youtube.com/watch?v=q4XqnLR2OBM]()

### change restrictions
```
Get-ExecutionPolicy 

:: dangerous
Set-ExecutionPolicy unrestricted

:: to revert 
Set-ExecutionPolicy restricted
```

## disable admin check 

```
# dangerous 
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f

# to revert 
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f
```

## activation script
https://github.com/massgravel/Microsoft-Activation-Scripts
```
irm https://massgrave.dev/get | iex

```

## install vtm 
```
https://github.com/directvt/vtm
vtm --install
```
## wget (if not installed yet)
```
https://gnuwin32.sourceforge.net/packages/wget.htm
```

## create github account
```
app for double auth:
https://play.google.com/store/apps/details?id=com.authy.authy&hl=en&pli=1
```

## install anaconda (add to path and all users)
```
https://www.anaconda.com/download
```

## install Visual Studio
```
{
  "version": "1.0",
  "components": [
    "Microsoft.VisualStudio.Component.CoreEditor",
    "Microsoft.VisualStudio.Workload.CoreEditor",
    "Microsoft.VisualStudio.Component.Roslyn.Compiler",
    "Microsoft.Component.MSBuild",
    "Microsoft.VisualStudio.Component.TextTemplating",
    "Microsoft.VisualStudio.Component.Debugger.JustInTime",
    "Microsoft.VisualStudio.Component.VC.CoreIde",
    "Microsoft.VisualStudio.Component.VC.Tools.x86.x64",
    "Microsoft.VisualStudio.Component.Graphics.Tools",
    "Microsoft.VisualStudio.Component.VC.DiagnosticTools",
    "Microsoft.VisualStudio.Component.VC.ATL",
    "Microsoft.VisualStudio.Component.SecurityIssueAnalysis",
    "Microsoft.VisualStudio.Component.VC.Redist.14.Latest",
    "Microsoft.VisualStudio.ComponentGroup.NativeDesktop.Core",
    "Microsoft.VisualStudio.ComponentGroup.WebToolsExtensions.CMake",
    "Microsoft.VisualStudio.Component.VC.CMake.Project",
    "Microsoft.VisualStudio.Component.Vcpkg",
    "Microsoft.VisualStudio.Component.Windows10SDK.20348",
    "Microsoft.VisualStudio.Workload.NativeDesktop"
  ]
}
```


### install in base 
```
pip install jedi black ruff ipython ripgreppythonfiles --user
```

## choco 

https://community.chocolatey.org/
```
### install choco 

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```


## install choco packages (powershell admin!!)

Pieces https://builds.pieces.app/stages/production/pieces_suite_windows/appinstaller/download

```
choco upgrade vscode sysinternals mingw cmake.install llvm zig visualstudio2022buildtools advanced-bat-to-exe-converter conan boost-msvc-14.3 vscode-pylance ripgrep fzf zoxide smartftp fd git.install nodejs.install wget nodejs jdk8 putty.install microsoft-windows-terminal curl make dotnetcore dotnet-sdk vcredist140 rust-ms netfx-4.7.2 ripgrep-all clink-maintained conemu shellcheck shfmt lua bat --yes --accept-license --allow-unofficial
```


## useful extras 

```
choco upgrade powertoys dxwnd exiftool dnsproxy winscp cppcheck --yes --accept-license --allow-unofficial
https://sourceforge.net/projects/clip-angel/
```

## mysys64
```
https://www.msys2.org/
```

## copy path 
```
﻿Windows Registry Editor Version 5.00

; Created by: Shawn Brink
; Created on: December 30th 2016
; Modified on: November 27th 2017
; Tutorial: https://www.tenforums.com/tutorials/73649-copy-path-add-context-menu-windows-10-a.html


[HKEY_CLASSES_ROOT\AllFilesystemObjects\shell\windows.copyaspath]
"CanonicalName"="{707C7BC6-685A-4A4D-A275-3966A5A3EFAA}"
"CommandStateHandler"="{3B1599F9-E00A-4BBF-AD3E-B3F99FA87779}"
"CommandStateSync"=""
"Description"="@shell32.dll,-30336"
"Icon"="imageres.dll,-5302"
"InvokeCommandOnSelection"=dword:00000001
"MUIVerb"="Copy Full Path"
"VerbHandler"="{f3d06e7c-1e45-4a26-847e-f9fcdee59be0}"
"VerbName"="copyaspath"

[HKEY_CLASSES_ROOT\AllFilesystemObjects\shellex\ContextMenuHandlers\CopyAsPathMenu]
@="{f3d06e7c-1e45-4a26-847e-f9fcdee59be0}"

```

## theme 
```
https://marketplace.visualstudio.com/items?itemName=hiteshchoudharycode.chai-theme
```

## extensions

```
code --install-extension aaron-bond.better-comments --install-extension adrianwilczynski.terminal-commands --install-extension albymor.increment-selection --install-extension alefragnani.bookmarks --install-extension antiantisepticeye.vscode-color-picker --install-extension artdiniz.quitcontrol-vscode --install-extension beaglefoot.awk-ide-vscode --install-extension benjamin-simmonds.pythoncpp-debug --install-extension bierner.markdown-preview-github-styles --install-extension charliermarsh.ruff --install-extension chunsen.bracket-select --install-extension clemenspeters.format-json --install-extension cliffordfajardo.highlight-line-vscode --install-extension cmstead.js-codeformer --install-extension codeium.codeium --install-extension davidkol.fastcompare --install-extension dk189.vscode-files-explorer --install-extension dracula-theme.theme-dracula --install-extension edgardmessias.clipboard-manager --install-extension exodiusstudios.comment-anchors --install-extension foxundermoon.shell-format --install-extension franneck94.vscode-cpython-extension-pack --install-extension github.codespaces --install-extension gruntfuggly.activitusbar --install-extension guiextensions.tosingleline --install-extension guyskk.language-cython --install-extension hangxingliu.vscode-awk-hint --install-extension jakobilee.file-organizer --install-extension jinsihou.diff-tool --install-extension johnpapa.vscode-peacock --install-extension kisstkondoros.vscode-gutter-preview --install-extension ktnrg45.vscode-cython --install-extension l13rary.l13-diff --install-extension llvm-vs-code-extensions.vscode-clangd --install-extension luggage66.awk --install-extension mads-hartmann.bash-ide-vscode --install-extension mechatroner.rainbow-csv --install-extension meshintelligenttechnologiesinc.pieces-vscode --install-extension mgesbert.indent-nested-dictionary --install-extension micnil.vscode-checkpoints --install-extension ms-python.debugpy --install-extension ms-python.python --install-extension ms-vscode.cpptools --install-extension naumovs.color-highlight --install-extension nick-rudenko.back-n-forth --install-extension oderwat.indent-rainbow --install-extension peterschmalfeldt.explorer-exclude --install-extension petli-full.awk-vscode --install-extension pkief.material-icon-theme --install-extension qcz.text-power-tools --install-extension qwtel.sqlite-viewer --install-extension roscop.activefileinstatusbar --install-extension ryu1kn.text-marker --install-extension sergeyegorov.folder-color --install-extension shardulm94.trailing-spaces --install-extension sleistner.vscode-fileutils --install-extension stackspotai.stackspotai --install-extension stkb.rewrap --install-extension tcwalther.cython --install-extension timonwong.shellcheck --install-extension tldraw-org.tldraw-vscode --install-extension tomoki1207.pdf --install-extension tomoki1207.vscode-input-sequence --install-extension tyriar.luna-paint --install-extension tyriar.sort-lines --install-extension usernamehw.indent-one-space --install-extension visualstudioexptteam.intellicode-api-usage-examples --install-extension visualstudioexptteam.vscodeintellicode --install-extension vscjava.vscode-java-debug --install-extension vscjava.vscode-java-dependency --install-extension vscjava.vscode-java-pack --install-extension vscjava.vscode-maven --install-extension vsls-contrib.gistfs --install-extension wscats.command-runner --install-extension yutengjing.open-in-external-app --install-extension yutengjing.vscode-archive 
```

## touch.bat  (windows folder)
``` 
type nul >>%1 & copy %1 +,,
``` 

## Windows Terminal 
```
{
    "$help": "https://aka.ms/terminal-documentation",
    "$schema": "https://aka.ms/terminal-profiles-schema",
    "actions": 
    [
        {
            "command": 
            {
                "action": "copy",
                "singleLine": false
            },
            "keys": "ctrl+c"
        },
        {
            "command": "paste",
            "keys": "ctrl+v"
        },
        {
            "command": 
            {
                "action": "splitPane",
                "split": "auto",
                "splitMode": "duplicate"
            },
            "keys": "alt+shift+d"
        },
        {
            "command": "find",
            "keys": "ctrl+shift+f"
        },
        {
            "command": "selectAll",
            "keys": "ctrl+a"
        }
    ],
    "alwaysShowNotificationIcon": true,
    "copyFormatting": "none",
    "copyOnSelect": false,
    "defaultProfile": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
    "disableAnimations": true,
    "experimental.rendering.forceFullRepaint": false,
    "firstWindowPreference": "defaultProfile",
    "focusFollowMouse": false,
    "initialCols": 50000,
    "initialPosition": "0,0",
    "language": "en-US",
    "launchMode": "default",
    "newTabMenu": 
    [
        {
            "type": "remainingProfiles"
        }
    ],
    "profiles": 
    {
        "defaults": 
        {
            "elevate": true,
            "useAtlasEngine": true
        },
        "list": 
        [
            {
                "commandline": "%SystemRoot%\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
                "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
                "hidden": false,
                "name": "Windows PowerShell",
                "scrollbarState": "always"
            },
            {
                "adjustIndistinguishableColors": "always",
                "bellStyle": "window",
                "closeOnExit": "never",
                "commandline": "%SystemRoot%\\System32\\cmd.exe",
                "experimental.retroTerminalEffect": false,
                "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
                "hidden": false,
                "historySize": 999999,
                "name": "cmd",
                "padding": "0"
            },
            {
                "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
                "hidden": false,
                "name": "Azure Cloud Shell",
                "source": "Windows.Terminal.Azure"
            },
            {
                "guid": "{17bf3de4-5353-5709-bcf9-835bd952a95e}",
                "hidden": true,
                "name": "Ubuntu-22.04",
                "source": "Windows.Terminal.Wsl"
            },
            {
                "guid": "{d7b20cea-47a9-518c-95a4-c8bd91e2e1c6}",
                "hidden": false,
                "name": "Ubuntu 22.04.2 LTS",
                "source": "CanonicalGroupLimited.Ubuntu22.04LTS_79rhkp1fndgsc"
            },
            {
                "guid": "{1d8daa44-ce56-58bc-9550-917fa9575f44}",
                "hidden": false,
                "name": "Developer Command Prompt for VS 2022",
                "source": "Windows.Terminal.VisualStudio"
            },
            {
                "guid": "{cce05000-698c-59a2-825d-a001c07d8cde}",
                "hidden": false,
                "name": "Developer PowerShell for VS 2022",
                "source": "Windows.Terminal.VisualStudio"
            }
        ]
    },
    "schemes": 
    [
        {
            "background": "#0C0C0C",
            "black": "#0C0C0C",
            "blue": "#0037DA",
            "brightBlack": "#767676",
            "brightBlue": "#3B78FF",
            "brightCyan": "#61D6D6",
            "brightGreen": "#16C60C",
            "brightPurple": "#B4009E",
            "brightRed": "#E74856",
            "brightWhite": "#F2F2F2",
            "brightYellow": "#F9F1A5",
            "cursorColor": "#FFFFFF",
            "cyan": "#3A96DD",
            "foreground": "#CCCCCC",
            "green": "#13A10E",
            "name": "Campbell",
            "purple": "#881798",
            "red": "#C50F1F",
            "selectionBackground": "#FFFFFF",
            "white": "#CCCCCC",
            "yellow": "#C19C00"
        },
        {
            "background": "#012456",
            "black": "#0C0C0C",
            "blue": "#0037DA",
            "brightBlack": "#767676",
            "brightBlue": "#3B78FF",
            "brightCyan": "#61D6D6",
            "brightGreen": "#16C60C",
            "brightPurple": "#B4009E",
            "brightRed": "#E74856",
            "brightWhite": "#F2F2F2",
            "brightYellow": "#F9F1A5",
            "cursorColor": "#FFFFFF",
            "cyan": "#3A96DD",
            "foreground": "#CCCCCC",
            "green": "#13A10E",
            "name": "Campbell Powershell",
            "purple": "#881798",
            "red": "#C50F1F",
            "selectionBackground": "#FFFFFF",
            "white": "#CCCCCC",
            "yellow": "#C19C00"
        },
        {
            "background": "#282C34",
            "black": "#282C34",
            "blue": "#61AFEF",
            "brightBlack": "#5A6374",
            "brightBlue": "#61AFEF",
            "brightCyan": "#56B6C2",
            "brightGreen": "#98C379",
            "brightPurple": "#C678DD",
            "brightRed": "#E06C75",
            "brightWhite": "#DCDFE4",
            "brightYellow": "#E5C07B",
            "cursorColor": "#FFFFFF",
            "cyan": "#56B6C2",
            "foreground": "#DCDFE4",
            "green": "#98C379",
            "name": "One Half Dark",
            "purple": "#C678DD",
            "red": "#E06C75",
            "selectionBackground": "#FFFFFF",
            "white": "#DCDFE4",
            "yellow": "#E5C07B"
        },
        {
            "background": "#FAFAFA",
            "black": "#383A42",
            "blue": "#0184BC",
            "brightBlack": "#4F525D",
            "brightBlue": "#61AFEF",
            "brightCyan": "#56B5C1",
            "brightGreen": "#98C379",
            "brightPurple": "#C577DD",
            "brightRed": "#DF6C75",
            "brightWhite": "#FFFFFF",
            "brightYellow": "#E4C07A",
            "cursorColor": "#4F525D",
            "cyan": "#0997B3",
            "foreground": "#383A42",
            "green": "#50A14F",
            "name": "One Half Light",
            "purple": "#A626A4",
            "red": "#E45649",
            "selectionBackground": "#4F525D",
            "white": "#FAFAFA",
            "yellow": "#C18301"
        },
        {
            "background": "#002B36",
            "black": "#002B36",
            "blue": "#268BD2",
            "brightBlack": "#073642",
            "brightBlue": "#839496",
            "brightCyan": "#93A1A1",
            "brightGreen": "#586E75",
            "brightPurple": "#6C71C4",
            "brightRed": "#CB4B16",
            "brightWhite": "#FDF6E3",
            "brightYellow": "#657B83",
            "cursorColor": "#FFFFFF",
            "cyan": "#2AA198",
            "foreground": "#839496",
            "green": "#859900",
            "name": "Solarized Dark",
            "purple": "#D33682",
            "red": "#DC322F",
            "selectionBackground": "#FFFFFF",
            "white": "#EEE8D5",
            "yellow": "#B58900"
        },
        {
            "background": "#FDF6E3",
            "black": "#002B36",
            "blue": "#268BD2",
            "brightBlack": "#073642",
            "brightBlue": "#839496",
            "brightCyan": "#93A1A1",
            "brightGreen": "#586E75",
            "brightPurple": "#6C71C4",
            "brightRed": "#CB4B16",
            "brightWhite": "#FDF6E3",
            "brightYellow": "#657B83",
            "cursorColor": "#002B36",
            "cyan": "#2AA198",
            "foreground": "#657B83",
            "green": "#859900",
            "name": "Solarized Light",
            "purple": "#D33682",
            "red": "#DC322F",
            "selectionBackground": "#073642",
            "white": "#EEE8D5",
            "yellow": "#B58900"
        },
        {
            "background": "#000000",
            "black": "#000000",
            "blue": "#3465A4",
            "brightBlack": "#555753",
            "brightBlue": "#729FCF",
            "brightCyan": "#34E2E2",
            "brightGreen": "#8AE234",
            "brightPurple": "#AD7FA8",
            "brightRed": "#EF2929",
            "brightWhite": "#EEEEEC",
            "brightYellow": "#FCE94F",
            "cursorColor": "#FFFFFF",
            "cyan": "#06989A",
            "foreground": "#D3D7CF",
            "green": "#4E9A06",
            "name": "Tango Dark",
            "purple": "#75507B",
            "red": "#CC0000",
            "selectionBackground": "#FFFFFF",
            "white": "#D3D7CF",
            "yellow": "#C4A000"
        },
        {
            "background": "#FFFFFF",
            "black": "#000000",
            "blue": "#3465A4",
            "brightBlack": "#555753",
            "brightBlue": "#729FCF",
            "brightCyan": "#34E2E2",
            "brightGreen": "#8AE234",
            "brightPurple": "#AD7FA8",
            "brightRed": "#EF2929",
            "brightWhite": "#EEEEEC",
            "brightYellow": "#FCE94F",
            "cursorColor": "#000000",
            "cyan": "#06989A",
            "foreground": "#555753",
            "green": "#4E9A06",
            "name": "Tango Light",
            "purple": "#75507B",
            "red": "#CC0000",
            "selectionBackground": "#555753",
            "white": "#D3D7CF",
            "yellow": "#C4A000"
        },
        {
            "background": "#300A24",
            "black": "#171421",
            "blue": "#0037DA",
            "brightBlack": "#767676",
            "brightBlue": "#08458F",
            "brightCyan": "#2C9FB3",
            "brightGreen": "#26A269",
            "brightPurple": "#A347BA",
            "brightRed": "#C01C28",
            "brightWhite": "#F2F2F2",
            "brightYellow": "#A2734C",
            "cursorColor": "#FFFFFF",
            "cyan": "#3A96DD",
            "foreground": "#FFFFFF",
            "green": "#26A269",
            "name": "Ubuntu-22.04-ColorScheme",
            "purple": "#881798",
            "red": "#C21A23",
            "selectionBackground": "#FFFFFF",
            "white": "#CCCCCC",
            "yellow": "#A2734C"
        },
        {
            "background": "#000000",
            "black": "#000000",
            "blue": "#000080",
            "brightBlack": "#808080",
            "brightBlue": "#0000FF",
            "brightCyan": "#00FFFF",
            "brightGreen": "#00FF00",
            "brightPurple": "#FF00FF",
            "brightRed": "#FF0000",
            "brightWhite": "#FFFFFF",
            "brightYellow": "#FFFF00",
            "cursorColor": "#FFFFFF",
            "cyan": "#008080",
            "foreground": "#C0C0C0",
            "green": "#008000",
            "name": "Vintage",
            "purple": "#800080",
            "red": "#800000",
            "selectionBackground": "#FFFFFF",
            "white": "#C0C0C0",
            "yellow": "#808000"
        }
    ],
    "showTabsInTitlebar": true,
    "startOnUserLogin": false,
    "tabWidthMode": "equal",
    "themes": [],
    "windowingBehavior": "useExisting",
    "wordDelimiters": null
}
```

## vs code config 
``` 
{
    "code-runner.runInTerminal": true,
    "editor.autoClosingBrackets": "always",
    "editor.bracketPairColorization.independentColorPoolPerBracketType": true,
    "cmake.showOptionsMovedNotification": false,
    "workbench.startupEditor": "none",
    "terminal.explorerKind": "external",
    "python.terminal.activateEnvironment": false,
    "terminal.integrated.gpuAcceleration": "on",
    "terminal.integrated.scrollback": 1000000,
    "accessibility.verbosity.terminal": false,
    "accessibility.dimUnfocused.opacity": 1,
    "terminal.integrated.accessibleViewFocusOnCommandExecution": true,
    "terminal.integrated.accessibleViewPreserveCursorPosition": true,
    "terminal.external.windowsExec": "C:\\Program Files\\WindowsApps\\Microsoft.WindowsTerminal_1.18.3181.0_x64__8wekyb3d8bbwe\\WindowsTerminal.exe",
    "editor.accessibilityPageSize": 1,
    "editor.accessibilitySupport": "off",
    "editor.definitionLinkOpensInPeek": true,
    "editor.emptySelectionClipboard": false,
    "editor.experimentalWhitespaceRendering": "off",
    "editor.fastScrollSensitivity": 4,
    "editor.foldingMaximumRegions": 500,
    "editor.gotoLocation.alternativeTypeDefinitionCommand": "editor.action.goToImplementation",
    "editor.gotoLocation.multipleDeclarations": "gotoAndPeek",
    "editor.guides.bracketPairs": true,
    "editor.inlayHints.padding": true,
    "editor.mouseWheelScrollSensitivity": 1.1,
    "editor.multiCursorLimit": 50000,
    "editor.padding.bottom": 1,
    "editor.padding.top": 1,
    "editor.tabCompletion": "on",
    "editor.stickyTabStops": true,
    "editor.unfoldOnClickAfterEndOfLine": true,
    "editor.unicodeHighlight.nonBasicASCII": false,
    "editor.wrappingIndent": "indent",
    "editor.fontWeight": "normal",
    "editor.formatOnPaste": true,
    "diffEditor.experimental.showMoves": true,
    "diffEditor.hideUnchangedRegions.enabled": true,
    "diffEditor.hideUnchangedRegions.minimumLineCount": 1,
    "diffEditor.maxComputationTime": 0,
    "diffEditor.maxFileSize": 0,
    "multiDiffEditor.experimental.enabled": true,
    "editor.minimap.scale": 1,
    "editor.inlineSuggest.showToolbar": "always",
    "editor.quickSuggestions": {
        "other": "on",
        "comments": "on",
        "strings": "on"
    },
    "editor.quickSuggestionsDelay": 3,
    "editor.screenReaderAnnounceInlineSuggestion": false,
    "editor.suggest.filterGraceful": false,
    "editor.suggest.matchOnWordStartOnly": false,
    "editor.suggest.preview": true,
    "editor.suggest.shareSuggestSelections": true,
    "editor.suggestSelection": "first",
    "files.autoGuessEncoding": true,
    "files.defaultLanguage": "Python",
    "files.hotExit": "off",
    "files.participants.timeout": 0,
    "files.readonlyFromPermissions": true,
    "files.simpleDialog.enable": true,
    "workbench.commandPalette.experimental.suggestCommands": true,
    "workbench.commandPalette.history": 50000,
    "workbench.commandPalette.preserveInput": true,
    "workbench.enableExperiments": false,
    "workbench.experimental.share.enabled": true,
    "workbench.list.fastScrollSensitivity": 6,
    "workbench.list.scrollByPage": true,
    "workbench.list.smoothScrolling": true,
    "workbench.localHistory.maxFileEntries": 5000,
    "workbench.localHistory.maxFileSize": 8192,
    "workbench.reduceMotion": "on",
    "workbench.tips.enabled": false,
    "workbench.tree.enableStickyScroll": true,
    "workbench.editor.autoLockGroups": {
        "terminalEditor": false
    },
    "workbench.editor.limit.enabled": false,
    "workbench.settings.enableNaturalLanguageSearch": false,
    "workbench.editor.wrapTabs": true,
    "workbench.editor.limit.value": 10000,
    "workbench.editor.pinnedTabsOnSeparateRow": true,
    "workbench.editor.sharedViewState": true,
    "window.enableMenuBarMnemonics": false,
    "window.restoreFullscreen": true,
    "accessibility.dimUnfocused.enabled": true,
    "search.experimental.quickAccess.preserveInput": true,
    "search.searchEditor.reusePriorSearchConfiguration": true,
    "search.seedWithNearestWord": true,
    "search.showLineNumbers": true,
    "search.smartCase": true,
    "search.useGlobalIgnoreFiles": true,
    "debug.allowBreakpointsEverywhere": true,
    "debug.autoExpandLazyVariables": true,
    "debug.console.closeOnEnd": true,
    "debug.inlineValues": "on",
    "scm.alwaysShowRepositories": true,
    "scm.inputMaxLines": 50,
    "terminal.integrated.allowMnemonics": false,
    "terminal.integrated.autoReplies": {
        "Terminate batch job (Y/N)": "Y\r"
    },
    "terminal.integrated.confirmOnKill": "never",
    "terminal.integrated.copyOnSelection": false,
    "terminal.integrated.cursorBlinking": true,
    "terminal.integrated.cursorStyleInactive": "block",
    "terminal.integrated.defaultLocation": "editor",
    "terminal.integrated.defaultProfile.windows": "Command Prompt",
    "terminal.integrated.ignoreBracketedPasteMode": true,
    "terminal.integrated.windowsEnableConpty": true,
    "accessibility.hideAccessibleView": true,
    "security.workspace.trust.untrustedFiles": "open",
    "pieces.setCopilotLocation": true,
    "[python]": {
        "editor.defaultFormatter": "charliermarsh.ruff"
    },
    "workbench.iconTheme": "material-icon-theme",
    "C_Cpp.intelliSenseEngine": "disabled",
    "bookmarks.useWorkaroundForFormatters": true,
    "ruff.showNotifications": "always",
    "ruff.trace.server": "verbose",
    "ruff.ignoreStandardLibrary": false,
    "python.analysis.userFileIndexingLimit": -1,
    "python.analysis.autoImportCompletions": true,
    "bookmarks.keepBookmarksOnLineDelete": true,
    "bookmarks.sideBar.expanded": true,
    "python.analysis.enablePytestSupport": false,
    "python.analysis.gotoDefinitionInStringLiteral": true,
    "clangd.checkUpdates": true,
    "clangd.path": "c:\\Users\\hansc\\AppData\\Roaming\\Code\\User\\globalStorage\\llvm-vs-code-extensions.vscode-clangd\\install\\17.0.3\\clangd_17.0.3\\bin\\clangd.exe",
    "python.analysis.completeFunctionParens": true,
    "bashIde.shellcheckPath": "C:\\ProgramData\\chocolatey\\bin\\shellcheck.exe",
    "codeium.enableConfig": {
        "*": true
    },
    "checkpoints.addCheckpointOnSave": true,
    "checkpoints.locale": "pt-BR",
    "rewrap.wrappingColumn": 72,
    "vscode-color-picker.languages": [
        "python",
        "javascript",
        "typescript",
        "C"
    ],
    "python.languageServer": "Jedi",
    "python.analysis.diagnosticSeverityOverrides": {
        "strictListInference": "none",
        "strictDictionaryInference": "none",
        "strictSetInference": "none",
        "analyzeUnannotatedFunctions": "none",
        "strictParameterNoneValue": "none",
        "enableTypeIgnoreComments": "none",
        "deprecateTypingAliases": "none",
        "enableExperimentalFeatures": "none",
        "disableBytesTypePromotions": "none",
        "reportGeneralTypeIssues": "none",
        "reportPropertyTypeMismatch": "none",
        "reportFunctionMemberAccess": "none",
        "reportMissingImports": "none",
        "reportMissingModuleSource": "none",
        "reportInvalidTypeForm": "none",
        "reportMissingTypeStubs": "none",
        "reportImportCycles": "none",
        "reportUnusedImport": "none",
        "reportUnusedClass": "none",
        "reportUnusedFunction": "none",
        "reportUnusedVariable": "none",
        "reportDuplicateImport": "none",
        "reportWildcardImportFromLibrary": "none",
        "reportAbstractUsage": "none",
        "reportArgumentType": "none",
        "reportAssertTypeFailure": "none",
        "reportAssignmentType": "none",
        "reportAttributeAccessIssue": "none",
        "reportCallIssue": "none",
        "reportInconsistentOverload": "none",
        "reportIndexIssue": "none",
        "reportInvalidTypeArguments": "none",
        "reportNoOverloadImplementation": "none",
        "reportOperatorIssue": "none",
        "reportOptionalSubscript": "none",
        "reportOptionalMemberAccess": "none",
        "reportOptionalCall": "none",
        "reportOptionalIterable": "none",
        "reportOptionalContextManager": "none",
        "reportOptionalOperand": "none",
        "reportRedeclaration": "none",
        "reportReturnType": "none",
        "reportTypedDictNotRequiredAccess": "none",
        "reportUntypedFunctionDecorator": "none",
        "reportUntypedClassDecorator": "none",
        "reportUntypedBaseClass": "none",
        "reportUntypedNamedTuple": "none",
        "reportPrivateUsage": "none",
        "reportTypeCommentUsage": "none",
        "reportPrivateImportUsage": "none",
        "reportConstantRedefinition": "none",
        "reportDeprecated": "none",
        "reportIncompatibleMethodOverride": "none",
        "reportIncompatibleVariableOverride": "none",
        "reportInconsistentConstructor": "none",
        "reportOverlappingOverload": "none",
        "reportPossiblyUnboundVariable": "none",
        "reportMissingSuperCall": "none",
        "reportUninitializedInstanceVariable": "none",
        "reportInvalidStringEscapeSequence": "none",
        "reportUnknownParameterType": "none",
        "reportUnknownArgumentType": "none",
        "reportUnknownLambdaType": "none",
        "reportUnknownVariableType": "none",
        "reportUnknownMemberType": "none",
        "reportMissingParameterType": "none",
        "reportMissingTypeArgument": "none",
        "reportInvalidTypeVarUse": "none",
        "reportCallInDefaultInitializer": "none",
        "reportUnnecessaryIsInstance": "none",
        "reportUnnecessaryCast": "none",
        "reportUnnecessaryComparison": "none",
        "reportUnnecessaryContains": "none",
        "reportAssertAlwaysTrue": "none",
        "reportSelfClsParameterName": "none",
        "reportImplicitStringConcatenation": "none",
        "reportUndefinedVariable": "none",
        "reportUnboundVariable": "none",
        "reportInvalidStubStatement": "none",
        "reportIncompleteStub": "none",
        "reportUnsupportedDunderAll": "none",
        "reportUnusedCallResult": "none",
        "reportUnusedCoroutine": "none",
        "reportUnusedExcept": "none",
        "reportUnusedExpression": "none",
        "reportUnnecessaryTypeIgnoreComment": "none",
        "reportMatchNotExhaustive": "none",
        "reportImplicitOverride": "none",
        "reportShadowedImports": "none",
    },
    "python.analysis.inlayHints.variableTypes": false,
    "python.analysis.inlayHints.pytestParameters": false,
    "python.analysis.inlayHints.functionReturnTypes": false,
    "python.analysis.persistAllIndices": false,
    "python.analysis.logLevel": "Error",
    "explorerExclude.showPicker": false,
    "workbench.activityBar.location": "top",
    "ruff.lint.args": [
        "--select=ALL",
        "--extend-select=UP",
        "--fix",
        "--unsafe-fixes"
    ],
    "material-icon-theme.files.color": "#26a69a",
    "explorer.confirmDelete": false,
    "workbench.editorAssociations": {
        "*.jpg": "luna.editor"
    },
    "openInExternalApp.openMapper": [
        {
            "extensionName": "py",
            "apps": [
                {
                    "title": "IPYTHON",
                    "openCommand": "fit.bat"
                }
            ]
        },
    ],
    "editor.defaultFormatter": "charliermarsh.ruff",
    "editor.mouseWheelZoom": true,
    "runTerminalCommand.commands": [
        {
            "command": "rufffiximports.bat {resource}",
            "auto": true,
        }
    ],
    "window.zoomLevel": -1,
    "debug.internalConsoleOptions": "neverOpen",
    "clipboard-manager.snippet.enabled": false,
    "codeium.aggressiveShutdown": true,
    "shellcheck.exclude": [
        "SC3054",
        "SC3030"
    ],
    "files.eol": "\n",
    "workbench.editor.highlightModifiedTabs": true,
    "luna.retainContextWhenHidden": false,
    "prettier.resolveGlobalModules": true,
    "git.openRepositoryInParentFolders": "never"
}
```

## windows terminal config 

```
{
	"persistedWindowLayouts" : 
	[
		{
			"initialPosition" : "1,2",
			"initialSize" : 
			{
				"height" : 648.0,
				"width" : 1280.0
			},
			"launchMode" : "default",
			"tabLayout" : 
			[
				{
					"action" : "newTab",
					"commandline" : "%SystemRoot%\\System32\\cmd.exe",
					"profile" : "Command Prompt",
					"startingDirectory" : "C:\\Users\\xxx",
					"suppressApplicationTitle" : false,
					"tabTitle" : "Command Prompt"
				},
				{
					"action" : "openSettings",
					"target" : "settingsUI"
				}
			]
		}
	]
}
```

## c:\menu.bat / c:\menu.exe

```
@echo off


setlocal enabledelayedexpansion

:: Check for administrative privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if %errorlevel% neq 0 (
    echo You are not an admin.
    set "folderPath=%USERPROFILE%\.conda\envs"
) else (
    echo You are an admin.
    set "folderPath=%ProgramData%\anaconda3\envs"
)


set "form_use_jedi=True"
set "form_greedy=True"
set "form_suppress_competing_matchers=True"
set "form_limit_to__all__=False"
set "form_jedi_compute_type_timeout=10000"
set "form_evaluation='dangerous'"
set "form_auto_close_dict_keys=True"
set "form_max_width=9999"
set "form_hist_file=%USERPROFILE%/ipython_hist.sqlite"
set "form_hist_file=%form_hist_file:\=/%"
set "form_db_cache_size=0"
set "form_xmode='Verbose'"
set "form_space_for_menu=20"
set "form_history_load_length=10000"
set "form_history_length=100000"
set "form_display_page=True"
set "form_autoformatter='black'"
set "form_auto_match=True"
set "form_history_load_length=10000"
set "form_history_length=100000"
set "form_log_level=30"
set "form_colors=Linux"
set "from_sqlite_path="
set "from_cache_size=100000"

echo 0. Create new env
set "index=1"

for /d %%F in ("%folderPath%\*") do (
    echo !index!. %%~nxF
    set "folders[!index!]=%%~fF"
	set "folders2[!index!]=%%~nxF

    set /a index+=1
)

set /p choice=Enter your choice: 

if %choice% equ 0 (
	set /p envname=Name of new env:
	echo !envname!

	set /p pyversion=Python version: 
	echo !pyversion!

	set /p packages=Packages to install:
	echo !packages!
	
	call conda config --prepend channels defaults
	call conda config --set channel_priority disabled
	call conda create -y -n !envname! python=!pyversion! pip ipython !packages!
	echo call conda activate !envname! > !folderPath!\!envname!\si.bat
	echo start cmd /k vtm -r term cmd.exe >> !folderPath!\!envname!\si.bat
	
	
	set "form_logfile=!folderPath!\!envname!\ipythonlog.log
	set "form_logfile=%form_logfile:\=/%"
	
	:: echo MODE con:cols=9999 lines=9999 > !folderPath!\!envname!\ipy.bat
	echo call touch _____tmp.py >> !folderPath!\!envname!\ipy.bat
	echo call ipython -i _____tmp.py -c="run %%1" --Completer.use_jedi=!form_use_jedi! --Completer.greedy=!form_greedy! --Completer.suppress_competing_matchers=!form_suppress_competing_matchers! --Completer.limit_to__all__=!form_limit_to__all__! --Completer.jedi_compute_type_timeout=!form_jedi_compute_type_timeout! --Completer.evaluation=!form_evaluation! --Completer.auto_close_dict_keys=!form_auto_close_dict_keys! --PlainTextFormatter.max_width=!form_max_width! --HistoryManager.hist_file=!form_hist_file! --HistoryManager.db_cache_size=!form_db_cache_size! --TerminalInteractiveShell.xmode=!form_xmode! --TerminalInteractiveShell.space_for_menu=!form_space_for_menu! --TerminalInteractiveShell.history_load_length=!form_history_load_length! --TerminalInteractiveShell.history_length=!form_history_length! --TerminalInteractiveShell.display_page=!form_display_page! --TerminalInteractiveShell.autoformatter=!form_autoformatter! --TerminalInteractiveShell.auto_match=!form_auto_match! --logappend=!form_logfile! --logfile=!form_logfile! --InteractiveShell.history_load_length=!form_history_load_length! --InteractiveShell.history_length=!form_history_length! --cache-size=!from_cache_size! --BaseIPythonApplication.log_level=!form_log_level! --colors=!form_colors! >> !folderPath!\!envname!\ipy.bat

	echo call cmd /k vtm -r term cmd /k ipy.bat %%1 >> !folderPath!\!envname!\fit.bat
	
	endlocal
	call %0

) else if %choice% gtr 0 if %choice% lss %index% (
    set "selectedFolder=!folders[%choice%]!"
	set "selectedFolder2=!folders2[%choice%]!"

    echo You chose: !selectedFolder!
	::call conda activate !selectedFolder2!
	set "tmp_link_file=%TEMP%\tmpfile_%RANDOM%.tmp"
	call where /R "%PROGRAMFILES%" /F code.exe > !tmp_link_file!
	call set /p msg= < !tmp_link_file!
	call activate !selectedFolder2!
	:: call !msg! !selectedFolder!
	start cmd /k !msg! !selectedFolder!
	endlocal
) else (
    echo Invalid choice. Please try again.
)

```

## c:\menu.bat / c:\menu.exe - Alternative version (new versions of VSCode) if you get an error `where` is not ... 

```
@echo off


setlocal enabledelayedexpansion

:: Check for administrative privileges
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if %errorlevel% neq 0 (
    echo You are not an admin.
    set "folderPath=%USERPROFILE%\.conda\envs"
) else (
    echo You are an admin.
    set "folderPath=%ProgramData%\anaconda3\envs"
)


set "form_use_jedi=True"
set "form_greedy=True"
set "form_suppress_competing_matchers=True"
set "form_limit_to__all__=False"
set "form_jedi_compute_type_timeout=10000"
set "form_evaluation='dangerous'"
set "form_auto_close_dict_keys=True"
set "form_max_width=9999"
set "form_hist_file=%USERPROFILE%/ipython_hist.sqlite"
set "form_hist_file=%form_hist_file:\=/%"
set "form_db_cache_size=0"
set "form_xmode='Verbose'"
set "form_space_for_menu=20"
set "form_history_load_length=10000"
set "form_history_length=100000"
set "form_display_page=True"
set "form_autoformatter='black'"
set "form_auto_match=True"
set "form_history_load_length=10000"
set "form_history_length=100000"
set "form_log_level=30"
set "form_colors=Linux"
set "from_sqlite_path="
set "from_cache_size=100000"

echo 0. Create new env
set "index=1"

for /d %%F in ("%folderPath%\*") do (
    echo !index!. %%~nxF
    set "folders[!index!]=%%~fF"
	set "folders2[!index!]=%%~nxF

    set /a index+=1
)

set /p choice=Enter your choice: 

if %choice% equ 0 (
	set /p envname=Name of new env:
	echo !envname!

	set /p pyversion=Python version: 
	echo !pyversion!

	set /p packages=Packages to install:
	echo !packages!
	
	call conda config --prepend channels defaults
	call conda config --set channel_priority disabled
	call conda create -y -n !envname! python=!pyversion! pip ipython !packages!
	echo call conda activate !envname! > !folderPath!\!envname!\si.bat
	echo start cmd /k vtm -r term cmd.exe >> !folderPath!\!envname!\si.bat
	
	
	set "form_logfile=!folderPath!\!envname!\ipythonlog.log
	set "form_logfile=%form_logfile:\=/%"
	
	:: echo MODE con:cols=9999 lines=9999 > !folderPath!\!envname!\ipy.bat
	echo call touch _____tmp.py >> !folderPath!\!envname!\ipy.bat
	echo call ipython -i _____tmp.py -c="run %%1" --Completer.use_jedi=!form_use_jedi! --Completer.greedy=!form_greedy! --Completer.suppress_competing_matchers=!form_suppress_competing_matchers! --Completer.limit_to__all__=!form_limit_to__all__! --Completer.jedi_compute_type_timeout=!form_jedi_compute_type_timeout! --Completer.evaluation=!form_evaluation! --Completer.auto_close_dict_keys=!form_auto_close_dict_keys! --PlainTextFormatter.max_width=!form_max_width! --HistoryManager.hist_file=!form_hist_file! --HistoryManager.db_cache_size=!form_db_cache_size! --TerminalInteractiveShell.xmode=!form_xmode! --TerminalInteractiveShell.space_for_menu=!form_space_for_menu! --TerminalInteractiveShell.history_load_length=!form_history_load_length! --TerminalInteractiveShell.history_length=!form_history_length! --TerminalInteractiveShell.display_page=!form_display_page! --TerminalInteractiveShell.autoformatter=!form_autoformatter! --TerminalInteractiveShell.auto_match=!form_auto_match! --logappend=!form_logfile! --logfile=!form_logfile! --InteractiveShell.history_load_length=!form_history_load_length! --InteractiveShell.history_length=!form_history_length! --cache-size=!from_cache_size! --BaseIPythonApplication.log_level=!form_log_level! --colors=!form_colors! >> !folderPath!\!envname!\ipy.bat

	echo call cmd /k vtm -r term cmd /k ipy.bat %%1 >> !folderPath!\!envname!\fit.bat
	
	endlocal
	call %0

) else if %choice% gtr 0 if %choice% lss %index% (
    set "selectedFolder=!folders[%choice%]!"
	set "selectedFolder2=!folders2[%choice%]!"

    echo You chose: !selectedFolder!
	::call conda activate !selectedFolder2!
	set "tmp_link_file=%TEMP%\tmpfile_%RANDOM%.tmp"
	call set /p msg= < !tmp_link_file!
	call activate !selectedFolder2!
	:: call !msg! !selectedFolder!
	start cmd /k "c:\Program Files\Microsoft VS Code\bin\code.cmd" !selectedFolder!
	endlocal
) else (
    echo Invalid choice. Please try again.
)



```


## vtm config 

```
%programdata%/vtm/settings.xml
```

```
 <config>  <!-- "C:\ProgramData\vtm\settings.xml" -->
     <scripting=off engine="python">  <!-- Not implemented, see gh-393 for details -->
         <python     cwd="" usetty=no  cmd="python -i"                  run="print(\"Hello World!\")"/>
         <powershell cwd="" usetty=yes cmd="powershell -NonInteractive" run="\"Hello World!\""/>
         <pwsh       cwd="" usetty=yes cmd="pwsh -NonInteractive"       run="\"Hello World!\""/>
         <lua        cwd="" usetty=no  cmd="lua -i"                     run="print \"Hello World!\""/>
         <javascript cwd="" usetty=no  cmd="node -i">
             <run>
                 console.log("Hello, World!");
             </run>
         </javascript>
     </scripting>
     <isolated=0/>  <!-- For internal use only. -->
     <menu wide=off selected=Term>  <!-- wide: Set wide or compact menu layout; selected: Set selected menu item id. -->
         <item*/>  <!-- Use asterisk at the end of the element name to set defaults.
                        Using an asterisk with the parameter name of the first element in the list without any other nested elements
                        indicates the beginning of the list, i.e. the list will replace the existing one when the configuration is merged. -->
         <item splitter label="apps">
             <notes>
                 " Default applications group                         \n"
                 " It can be configured in ~/.config/vtm/settings.xml "
             </notes>
         </item>
         <item* hidden=no fgc=whitedk bgc=0x00000000 winsize=0,0 wincoor=0,0 winform=undefined /> <!-- winform: undefined | maximized | minimized -->
         <item id=Term label="cmd" type=DirectVT title="Command Prompt" notes=" Windows Command Prompt " param="$0 -r term">
             <hotkeys key*>    <!-- not implemented -->
                 <key="Ctrl+'t'" action=Start/>
             </hotkeys>
             <config>   <!-- The following config partially overrides the base configuration. It is valid for DirectVT apps only. -->
                 <term>
                     <scrollback>
                         <size=400000/>   <!-- Scrollback buffer length. -->
                         <wrap="off"/>    <!-- Lines wrapping mode. -->
                     </scrollback>
                     <cursor>
                         <style="block"/> <!-- block | underline  -->
                     </cursor>
                     <menu>
                         <autohide=off/>  <!--  If true, show window menu only on hover. -->
                         <slim=true/>
                     </menu>
                     <selection>
                         <mode=text/> <!-- text | ansi | rich | html | protected | none -->
                     </selection>
                     <hotkeys key*>    <!-- not implemented -->
                         <key="Alt+RightArrow" action=TerminalFindNext/>
                         <key="Alt+LeftArrow"  action=TerminalFindPrev/>
                         <key="Ctrl+'z'"       action=TerminalQuit/>
                     </hotkeys>
                 </term>
             </config>
         </item>
         <item id=PowerShell label="PowerShell" type=DirectVT title="Windows PowerShell"          param="$0 -r term powershell" fgc=15 bgc=0xFF562401 notes=" Windows PowerShell "/>
         <item id=Tile       label="Tile"       type=Group    title="Tiling Window Manager" param="h1:1(Term, Term)"    notes=" Tiling window manager with two terminals attached "/>
         <item id=View       label=View         type=Region   title="\e[11:3pView: Region"  winform=maximized           notes=" Desktop region marker "/>
         <item id=Logs       label=Logs         type=DirectVT title="Logs"                  param="$0 -q -r term $0 -m" notes=" Log monitor ">
             <config>
                 <term>
                     <logs=off/>
                     <scrollback>
                         <size=400000/>
                         <wrap="off"/>
                     </scrollback>
                     <menu item*>
                         <autohide = off/>
                         <slim = true/>
                         <item label="<" action=TerminalFindPrev>  <!-- type=Command is a default item's attribute. -->
                             <label="\e[38:2:0:255:0m<\e[m"/>
                             <notes>
                                 " Previous match                                \n"
                                 " - Clipboard data will be used if no selection \n"
                                 " - Scroll one page up if clipboard is empty    "
                             </notes>
                         </item>
                         <item label=">" action=TerminalFindNext>
                             <label="\e[38:2:0:255:0m>\e[m"/>
                             <notes>
                                 " Next match                                    \n"
                                 " - Clipboard data will be used if no selection \n"
                                 " - Scroll one page down if clipboard is empty  "
                             </notes>
                         </item>
                         <item label="Wrap" type=Option action=TerminalWrapMode data="on">
                             <label="\e[38:2:0:255:0mWrap\e[m" data="off"/>
                             <notes>
                                 " Wrapping text lines on/off      \n"
                                 " - Applied to selection if it is "
                             </notes>
                         </item>
                         <item label="Selection" notes=" Text selection mode " type=Option action=TerminalSelectionMode data="none">  <!-- type=Option means that the тext label will be selected when clicked.  -->
                             <label="\e[38:2:0:255:0mPlaintext\e[m" data="text"/>
                             <label="\e[38:2:255:255:0mANSI-text\e[m" data="ansi"/>
                             <label data="rich">
                                 "\e[38:2:109:231:237m""R"
                                 "\e[38:2:109:237:186m""T"
                                 "\e[38:2:60:255:60m"  "F"
                                 "\e[38:2:189:255:53m" "-"
                                 "\e[38:2:255:255:49m" "s"
                                 "\e[38:2:255:189:79m" "t"
                                 "\e[38:2:255:114:94m" "y"
                                 "\e[38:2:255:60:157m" "l"
                                 "\e[38:2:255:49:214m" "e" "\e[m"
                             </label>
                             <label="\e[38:2:0:255:255mHTML-code\e[m" data="html"/>
                             <label="\e[38:2:0:255:255mProtected\e[m" data="protected"/>
                         </item>
                         <item label="Reset" notes=" Clear scrollback and SGR-attributes " action=TerminalOutput data="\e[!p"/>
                     </menu>
                     <selection>
                         <mode = text/> <!-- text | ansi | rich | html | protected | none -->
                     </selection>
                 </term>
             </config>
         </item>
         <autorun item*>  <!-- Autorun specified menu items      -->
             <!--  <item* id=Term winsize=8000,2500 />            -->    
             <!--  <item wincoor=92,31 winform=minimized />      --> <!-- Autorun supports minimized winform only. -->
             <!--  <item wincoor=8,31 />                         -->
             <!--  <item wincoor=8,4 winsize=164,25 focused />   -->
         </autorun>
         <viewport coor=0,0/>  <!-- Viewport position for the first connected user. At runtime, this value is temporarily replaced with the next disconnecting user's viewport coordinates to restore the viewport position on reconnection. -->
         <width>    <!-- Taskbar menu width. -->
             <folded=16/>
             <expanded=64/>
         </width>
         <color fgc=whitedk bgc=0xC0202020 /> <!-- Set the bgc alpha to FF to disable acrylics in taskbar. -->
     </menu>
     <panel> <!-- Desktop info panel. -->
         <env = ""/> <!-- Environment block. -->
         <cmd = ""/> <!-- Command-line to activate. -->
         <cwd = ""/> <!-- Working directory. -->
         <height = 1 /> <!-- Desktop space reserved on top. -->
     </panel>
     <hotkeys key*>    <!-- not implemented -->
         <key="Ctrl+PgUp" action=PrevWindow/>
         <key="Ctrl+PgDn" action=NextWindow/>
     </hotkeys>
     <appearance>
         <defaults>
             <fps      = 60   />
             <wheel_dt = 3    /> <!-- Mouse scrolling wheel step (non-smooth scrolling).   -->
             <bordersz = 1,1  />
             <lucidity = 0xff /> <!-- not implemented -->
             <tracking = on  /> <!-- Mouse cursor highlighting. -->
             <macstyle = no /> <!-- Preferred window control buttons location. no: right corner (like on MS Windows), yes: left side (like on macOS) -->
             <brighter   fgc=purewhite bgc=purewhite alpha=60 /> <!-- Highlighter. -->
             <kb_focus   fgc=bluelt    bgc=bluelt    alpha=60 /> <!-- Keyboard focus indicator. -->
             <shadower   bgc=0xB4202020 />                       <!-- Darklighter. -->
             <shadow     bgc=0xB4202020 />                       <!-- Light Darklighter. -->
             <selector   bgc=0x30ffffff txt=" " />               <!-- Selection overlay. -->
             <highlight  fgc=purewhite bgc=bluelt      />
             <focused    fgc=puregreen                 />
             <active     fgc=whitelt                   />
             <selected   fgc=whitelt                   /> <!-- SGR attributes (boolean): itc: italic, bld: bold, und: underline, inv: reverse, ovr: overline, blk: blink -->
             <warning    fgc=whitelt   bgc=yellowdk    />
             <danger     fgc=whitelt   bgc=redlt       />
             <action     fgc=whitelt   bgc=greenlt     />
             <label      fgc=blackdk   bgc=whitedk     />
             <inactive   fgc=blacklt   bgc=transparent />
             <menu_white fgc=whitelt   bgc=0x80404040  />
             <menu_black fgc=blackdk   bgc=0x80404040  />
             <timings>
                 <fader duration=0ms fast=0ms/>  <!-- Fader animation config. -->
                 <spd            = 10    /> <!-- Auto-scroll initial speed component ΔR.              -->
                 <pls            = 167   /> <!-- Auto-scroll initial speed component ΔT.              -->
                 <ccl            = 120   /> <!-- Auto-scroll duration in ms.                          -->
                 <spd_accel      = 1     /> <!-- Auto-scroll speed accelation.                        -->
                 <ccl_accel      = 30    /> <!-- Auto-scroll additional duration in ms.               -->
                 <spd_max        = 100   /> <!-- Auto-scroll max speed.                               -->
                 <ccl_max        = 1000  /> <!-- Auto-scroll max duration in ms                       -->
                 <deceleration   = 2s    /> <!-- Object state stopping duration in s.                 -->
                 <switching      = 200   /> <!-- Object state switching duration in ms.               -->
                 <blink_period   = 400ms /> <!-- Period in ms between the blink states of the cursor. -->
                 <menu_timeout   = 250ms /> <!-- Taskbar collaplse timeout.                           -->
                 <active_timeout = 1s    /> <!-- Timeout off the active object.                       -->
                 <repeat_delay   = 500ms /> <!-- Repeat delay.                                        -->
                 <repeat_rate    = 30ms  /> <!-- Repeat rate.                                         -->
             </timings>
             <limits>
                 <window size=9999x9999 />  <!-- Max window size -->
             </limits>
         </defaults>
         <runapp>    <!-- Override defaults. -->
             <brighter fgc=purewhite bgc=purewhite alpha=0 /> <!-- Highlighter. -->
         </runapp>
     </appearance>
     <set>         <!-- Global namespace - Unresolved literals will be taken from here. -->
         <blackdk   = 0xFF101010 /> <!-- Color reference literals. -->
         <reddk     = 0xFF1f0fc4 />
         <greendk   = 0xFF0ea112 />
         <yellowdk  = 0xFF009cc0 />
         <bluedk    = 0xFFdb3700 />
         <magentadk = 0xFF981787 />
         <cyandk    = 0xFFdd963b />
         <whitedk   = 0xFFbbbbbb />
         <blacklt   = 0xFF757575 />
         <redlt     = 0xFF5648e6 />
         <greenlt   = 0xFF0cc615 />
         <yellowlt  = 0xFFa5f1f8 />
         <bluelt    = 0xFFff783a />
         <magentalt = 0xFF9e00b3 />
         <cyanlt    = 0xFFd6d660 />
         <whitelt   = 0xFFf3f3f3 />
         <pureblack = 0xFF000000 />
         <purewhite = 0xFFffffff />
         <purered   = 0xFF0000ff />
         <puregreen = 0xFF00ff00 />
         <pureblue  = 0xFFff0000 />
         <nocolor   = 0x00000000 />
         <transparent = nocolor  />
     </set>
     <client>
         <background fgc=whitedk bgc=0xFF000000>  <!-- Desktop background color. -->
             <tile=""/> <!-- True color ANSI-art with gradients can be used here. -->
         </background>
         <clipboard>
             <preview enabled=no size=800x250 bgc=bluedk fgc=whitelt>
                 <alpha=0xFF/>  <!-- Preview alpha is applied only to the ansi/rich/html text type -->
                 <timeout=30s/>  <!-- Preview hiding timeout. Set it to zero to disable hiding. -->
                 <shadow=7  />  <!-- Preview shadow strength (0-10). -->
             </preview>
             <format=html />  <!-- text | ansi | rich | html | protected -->
         </clipboard>
         <mouse dblclick=500ms/>
         <tooltips timeout=2000ms enabled=true fgc=pureblack bgc=purewhite/>
         <debug overlay=off toggle="🐞"/>  <!-- Display console debug info. -->
         <regions enabled=0/>             <!-- Highlight UI objects boundaries. -->
         <keyboard>
             <layout = QWERTY/>  <!-- Not implemented. QWERTY, AZERTY, Dvorak, etc. -->
         </keyboard>
     </client>
     <term>      <!-- Base configuration for the Term app. It can be partially overridden by the menu item's config subarg. -->
         <scrollback>
             <size=400000    />   <!-- Initial scrollback buffer length. -->
             <growstep=20000    />   <!-- Scrollback buffer grow step. The buffer behaves like a ring in case of zero. -->
             <growlimit=4000000   />   <!-- Scrollback buffer grow limit. The buffer will behave like a ring when the limit is reached. If set to zero, then the limit is equal to the initial buffer size. -->
             <maxline=6553500 />   <!-- Max line length. Line splits if it exceeds the limit. -->
             <wrap="off"     />   <!-- Lines wrapping mode. -->
             <reset onkey="on" onoutput="off"/>   <!-- Scrollback viewport reset triggers. -->
             <altscroll enabled="yes" step=1 />   <!-- Alternate scroll mode settings. -->
         </scrollback>
         <color>
             <color0  = blackdk    /> <!-- See /config/set/* for the color name reference. -->
             <color1  = reddk      />
             <color2  = greendk    />
             <color3  = yellowdk   />
             <color4  = bluedk     />
             <color5  = magentadk  />
             <color6  = cyandk     />
             <color7  = whitedk    />
             <color8  = blacklt    />
             <color9  = redlt      />
             <color10 = greenlt    />
             <color11 = yellowlt   />
             <color12 = bluelt     />
             <color13 = magentalt  />
             <color14 = cyanlt     />
             <color15 = whitelt    />
             <default bgc=0 fgc=15 />  <!-- Initial colors. -->
             <match fx=color bgc="0xFF007F00" fgc=whitelt/>  <!-- Color of the selected text occurrences. Set fx to use cell::shaders: xlight | color | invert | reverse -->
             <selection>
                 <text fx=color bgc=bluelt fgc=whitelt/>  <!-- Highlighting of the selected text in plaintext mode. -->
                 <protected fx=color bgc=bluelt fgc=whitelt/>  <!-- Note: The bgc and fgc attributes only apply to the fx=color shader. -->
                 <ansi fx=xlight bgc=bluelt fgc=whitelt/>
                 <rich fx=xlight bgc=bluelt fgc=whitelt/>
                 <html fx=xlight bgc=bluelt fgc=whitelt/>
                 <none fx=color bgc=blacklt fgc=whitedk/>  <!-- Inactive selection color. -->
             </selection>
         </color>
         <fields>
             <lucent=0xC0/> <!-- Fields transparency level. -->
             <size=0/>      <!-- Left/right field size (for hz scrolling UX). -->
         </fields>
         <tablen=4/>   <!-- Tab length. -->
         <logs=faux/>   <!-- Enable IO logging. Use the Logs or monitor mode (vtm -m) to see the output. -->
         <cursor>
             <style="underline"/> <!-- block | underline -->
             <blink=400ms/>       <!-- blink period -->
             <show=true/>
         </cursor>
         <menu item*>
             <autohide=off/>
             <enabled=1/>
             <slim=1/>
             <item label="<" action=TerminalFindPrev>  <!-- type=Command is a default item's attribute. -->
                 <label="\e[38:2:0:255:0m<\e[m"/>
                 <notes>
                     " Previous match                                \n"
                     " - Jump to previous match with selection       \n"
                     " - Clipboard data will be used if no selection \n"
                     " - Scroll one page up if clipboard is empty    "
                 </notes>
             </item>
             <item label=">" action=TerminalFindNext>
                 <label="\e[38:2:0:255:0m>\e[m"/>
                 <notes>
                     " Next match                                    \n"
                     " - Jump to next match with selection           \n"
                     " - Clipboard data will be used if no selection \n"
                     " - Scroll one page down if clipboard is empty  "
                 </notes>
             </item>
             <item label="Wrap" type=Option action=TerminalWrapMode data="off">
                 <label="\e[38:2:0:255:0mWrap\e[m" data="off"/>
                 <notes>
                     " Wrapping text lines on/off      \n"
                     " - Applied to selection if it is "
                 </notes>
             </item>
             <item label="Selection" notes=" Text selection mode " type=Option action=TerminalSelectionMode data="none">  <!-- type=Option means that the тext label will be selected when clicked.  -->
                 <label="\e[38:2:0:255:0mPlaintext\e[m" data="text"/>
                 <label="\e[38:2:255:255:0mANSI-text\e[m" data="ansi"/>
                 <label data="rich">
                     "\e[38:2:109:231:237m""R"
                     "\e[38:2:109:237:186m""T"
                     "\e[38:2:60:255:60m"  "F"
                     "\e[38:2:189:255:53m" "-"
                     "\e[38:2:255:255:49m" "s"
                     "\e[38:2:255:189:79m" "t"
                     "\e[38:2:255:114:94m" "y"
                     "\e[38:2:255:60:157m" "l"
                     "\e[38:2:255:49:214m" "e" "\e[m"
                 </label>
                 <label="\e[38:2:0:255:255mHTML-code\e[m" data="html"/>
                 <label="\e[38:2:0:255:255mProtected\e[m" data="protected"/>
             </item>
             <item label="Log" notes=" Console logging is off " type=Option action=TerminalStdioLog data="off">
                 <label="\e[38:2:0:255:0mLog\e[m" notes=" Console logging is on   \n Run Logs to see output  " data="on"/>
             </item>
             <item label="Clear" notes=" Clear TTY viewport "                  action=TerminalOutput data="\e[2J"/>
             <item label="Reset" notes=" Clear scrollback and SGR-attributes " action=TerminalOutput data="\e[!p"/>
             <!-- <item label="Hello, World!" notes=" Simulating keypresses "       action=TerminalSendKey data="Hello World!"/> -->
         </menu>
         <selection>
             <mode="text"/> <!-- text | ansi | rich | html | protected | none -->
             <rect=false/>  <!-- Preferred selection form: Rectangular: true, Linear: false. -->
         </selection>
         <atexit = auto/>  <!-- auto:    Stay open and ask if exit code != 0. (default)
                                ask:     Stay open and ask.
                                close:   Always close.
                                restart: Restart session.
                                retry:   Restart session if exit code != 0. -->
         <hotkeys key*>    <!-- not implemented -->
             <key="Alt+RightArrow" action=FindNext/>
             <key="Alt+LeftArrow"  action=FindPrev/>
         </hotkeys>
     </term>
     <defapp>
         <menu>
             <autohide=on/>
             <enabled=true/>
             <slim=true/>
         </menu>
     </defapp>
     <tile>
         <menu>
             <autohide=on/>
             <enabled=true/>
             <slim=true/>
         </menu>
     </tile>
     <text>      <!-- Base configuration for the Text app. It can be overridden by param's subargs. -->
         <!-- not implemented -->
     </text>
     <calc>      <!-- Base configuration for the Calc app. It can be overridden by param's subargs. -->
         <!-- not implemented -->
     </calc>
     <gems>      <!-- Base configuration for the Calc app. It can be overridden by param's subargs. -->
         <!-- not implemented -->
     </gems>
     <settings>      <!-- Base configuration for the Settings app. It can be overridden by param's subargs. -->
         <!-- not implemented -->
     </settings>
 </config>
 ```

## ripgrep py C:\rgtt.bat
https://github.com/hansalemaos/ripgreppythonfiles

```

call python -c "from ripgreppythonfiles import rfile;rfile(r'''%*''')"

```

## ruff importfixer C:\rufffiximports.bat

https://github.com/hansalemaos/ruffrgimportfixer


```
python -c "from ruffrgimportfixer import fix_imports;fix_imports(r'''%*''')"
```

## file search  c:\fa.bat

```
@echo off
setlocal enabledelayedexpansion

set "timestamp=%date:~4,2%%date:~7,2%%date:~10,4%_%time:~0,2%%time:~3,2%%time:~6,2%"
set "tempFile=%TEMP%\results_!timestamp!.txt"

if "%2"=="" (
    set "minDepth=0"
) else (
    set "minDepth=%2"
)

if "%3"=="" (
    set "maxDepth=1000"
) else (
    set "maxDepth=%3"
)

call fd %* -a --unrestricted --follow --max-depth !maxDepth!  --min-depth !minDepth! --color always > "!tempFile!"

call type "!tempFile!"
echo Results: !tempFile!

endlocal
```
## c:\v64.bat
```
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
```



