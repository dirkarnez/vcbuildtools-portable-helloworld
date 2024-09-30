@echo off
set BUILD_TOOLS_ROOT=%USERPROFILE%\Downloads\MY_PORTABLE_MSVC
set WindowsSDKDir=%BUILD_TOOLS_ROOT%\Windows Kits\10
set VCToolsInstallDir=%BUILD_TOOLS_ROOT%\VC\Tools\MSVC\14.41.34120
set WindowsSDKVersion=10.0.26100.0
set VSCMD_ARG_TGT_ARCH=x64
set VSCMD_ARG_HOST_ARCH=x64

set INCLUDE=^
%VCToolsInstallDir%\include;^
%WindowsSDKDir%\Include\%WindowsSDKVersion%\ucrt;^
%WindowsSDKDir%\Include\%WindowsSDKVersion%\shared;^
%WindowsSDKDir%\Include\%WindowsSDKVersion%\um;^
%WindowsSDKDir%\Include\%WindowsSDKVersion%\winrt;^
%WindowsSDKDir%\Include\%WindowsSDKVersion%\cppwinrt;

set LIB=^
%VCToolsInstallDir%\lib\%VSCMD_ARG_TGT_ARCH%;^
%WindowsSDKDir%\Lib\%WindowsSDKVersion%\ucrt\%VSCMD_ARG_TGT_ARCH%;^
%WindowsSDKDir%\Lib\%WindowsSDKVersion%\um\%VSCMD_ARG_TGT_ARCH%;

set BUILD_TOOLS_BIN=^
%VCToolsInstallDir%\bin\Host%VSCMD_ARG_HOST_ARCH%\%VSCMD_ARG_TGT_ARCH%;^
%WindowsSDKDir%\bin\%WindowsSDKVersion%\%VSCMD_ARG_TGT_ARCH%;^
%WindowsSDKDir%\bin\%WindowsSDKVersion%\%VSCMD_ARG_TGT_ARCH%\ucrt;

set PATH=^
%BUILD_TOOLS_BIN%;

"%BUILD_TOOLS_ROOT%\VC\Tools\MSVC\14.41.34120\bin\Hostx64\x64\cl.exe" /EHsc main.cpp /link /out:main.exe