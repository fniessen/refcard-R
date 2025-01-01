@echo off
:: This script is used to invoke the R interpreter installed in WSL (Windows
:: Subsystem for Linux).
::
:: Place this script in a directory included in your system's PATH (e.g.,
:: C:\Program Files).
::
:: Usage:
::     Call this script from the Windows command prompt, passing any desired
::     arguments for R.
::
:: Example:
::     wsl-r.cmd --version
::
:: Arguments provided will be forwarded to the R interpreter in WSL.

wsl /usr/bin/R %*
