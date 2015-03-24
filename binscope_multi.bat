@echo off

if "%~1"=="" goto ErrorNoArgs

for %%i in (%~s1\*.exe %~s1\*.dll %~s1\*.ocx) do binscope /NoLogo /e VB6Check /e RSA32Check /e GSFunctionSafeBuffersCheck /e GSFriendlyInitCheck /e GSCheck /e CompilerVersionCheck /e ATLVulnCheck /e ATLVersionCheck /LogFile "%%~ni.html" /Target "%%~i"
goto ExitScript

:ErrorNoArgs
echo Missing targets!

:ExitScript

