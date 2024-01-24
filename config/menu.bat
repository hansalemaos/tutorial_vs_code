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
	echo start cmd /k vtm -r cmd.exe >> !folderPath!\!envname!\si.bat
	
	
	set "form_logfile=!folderPath!\!envname!\ipythonlog.log
	set "form_logfile=%form_logfile:\=/%"
	
	echo MODE con:cols=9999 lines=9999 > !folderPath!\!envname!\ipy.bat
	echo call touch %%1 >> !folderPath!\!envname!\ipy.bat
	echo call ipython -i "%%1" --Completer.use_jedi=!form_use_jedi! --Completer.greedy=!form_greedy! --Completer.suppress_competing_matchers=!form_suppress_competing_matchers! --Completer.limit_to__all__=!form_limit_to__all__! --Completer.jedi_compute_type_timeout=!form_jedi_compute_type_timeout! --Completer.evaluation=!form_evaluation! --Completer.auto_close_dict_keys=!form_auto_close_dict_keys! --PlainTextFormatter.max_width=!form_max_width! --HistoryManager.hist_file=!form_hist_file! --HistoryManager.db_cache_size=!form_db_cache_size! --TerminalInteractiveShell.xmode=!form_xmode! --TerminalInteractiveShell.space_for_menu=!form_space_for_menu! --TerminalInteractiveShell.history_load_length=!form_history_load_length! --TerminalInteractiveShell.history_length=!form_history_length! --TerminalInteractiveShell.display_page=!form_display_page! --TerminalInteractiveShell.autoformatter=!form_autoformatter! --TerminalInteractiveShell.auto_match=!form_auto_match! --logappend=!form_logfile! --logfile=!form_logfile! --InteractiveShell.history_load_length=!form_history_load_length! --InteractiveShell.history_length=!form_history_length! --cache-size=!from_cache_size! --BaseIPythonApplication.log_level=!form_log_level! --colors=!form_colors! >> !folderPath!\!envname!\ipy.bat
	endlocal
	call %0

) else if %choice% gtr 0 if %choice% lss %index% (
    set "selectedFolder=!folders[%choice%]!"
	set "selectedFolder2=!folders2[%choice%]!"

    echo You chose: !selectedFolder!
	call conda activate !selectedFolder2!
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

