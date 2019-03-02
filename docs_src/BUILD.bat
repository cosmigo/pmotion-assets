:: "BUILD.bat" v1.0.1 (2019/03/02) by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: Converts every "*.asciidoc" file in the repository to an HTML document in the
:: "/docs/" target folder.
:: -----------------------------------------------------------------------------
:: REQUIREMENTS -- To run this script you'll need to install:
:: - Asciidoctor (Ruby):
::   https://asciidoctor.org/
:: - Highlight >= 3.48:
::   http://www.andre-simon.de/
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.
:: =============================================================================
::                           Highlight Configuration                            
:: =============================================================================
SET "HIGHLIGHT_DATADIR=%~dp0hl\"
ECHO HIGHLIGHT_DATADIR: %HIGHLIGHT_DATADIR%
:: =============================================================================
::                             Iterate and Convert                              
:: =============================================================================
:: Iterate over AsciiDoc files through the whole project, starting from the root
:: folder (up one level) and convert them to HTML.
PUSHD ..\
ECHO ================================
ECHO Building Pro Motion NG Documents
ECHO ================================
ECHO Converting documents from AsciiDoc to HTML:
FOR /R %%i IN (*.asciidoc) DO (
    CALL :conv2html %%i
)
POPD
EXIT /B
:: *****************************************************************************
:: *                                                                           *
:: *                                Functions                                  *
:: *                                                                           *
:: *****************************************************************************
:: =============================================================================
:: func                          Convert to HTML                                
:: =============================================================================
:conv2html

ECHO - "%1"
CALL asciidoctor^
    --verbose^
    --safe-mode unsafe^
    --template-dir %~dp0haml^
    --require %~dp0adoc/highlight-treeprocessor_mod.rb^
    --destination-dir ./docs^
     -a source-highlighter=highlight^
     -a docinfodir=%~dp0adoc^
     -a docinfo=shared-head^
      %1
EXIT /B

:: EOF ::
