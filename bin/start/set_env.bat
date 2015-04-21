:: Set common directories
SET DRIVE=%cd:~0,2%
SET APPS=%DRIVE%\Apps
SET P_APPS=%APPS%\PortableApps
:: LaTeX environment
SET SUMATRA_DIR=%P_APPS%\SumatraPDFPortable\App\SumatraPDF
SET MIKTEX_DIR=%APPS%\Miktex\miktex\bin
SET SUBLIME_DIR=%APPS%\SublimeText3
SET PATH=%SUMATRA_DIR%;%MIKTEX_DIR%;%SUBLIME_DIR%;%PATH%
:: Sublime Package Directory for symlinks
SET SUBLIME_PKG=%SUBLIME_DIR%\Data\Packages
:: AHK
SET AHK_DIR=%APPS%\AHK
SET PATH=%AHK_DIR%;%PATH%
:: Generally useful
SET ZIP_DIR=%P_APPS%\7-ZipPortable\App\7-Zip64
SET IMAGEMGK_DIR=%APPS%\ImageMagick-6.9.1-1
SET PDFTK_DIR=%P_APPS%\PDFTKBuilderPortable\App\pdftkbuilder
SET WINMERGE_DIR=%P_APPS%\WinMergePortable\App\WinMerge
SET CONEMU_DIR=%P_APPS%\ConEmu\App\ConEmu
SET PATH=%ZIP_DIR%;%IMAGEMGK_DIR%;%PDFTK_DIR%;%WINMERGE_DIR%;%CONEMU_DIR%;%PATH%
:: Git directory
:: I think Git uses GIT_DIR and GIT_BIN internally. Don't want to overwrite them.
SET P_GIT_DIR=%P_APPS%\GitPortable\App\Git
SET P_GIT_BIN=%P_GIT_DIR%\bin
SET PATH=%P_GIT_BIN%;%PATH%
:: Custom bin
SET USR_BASH_BIN=%DRIVE%\bin\bash
SET PATH=%USR_BASH_BIN%;%PATH%
SET PYTHONPATH=%DRIVE%\bin\python
