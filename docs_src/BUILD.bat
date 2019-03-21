:: "BUILD.bat" v1.0.3 (2019/03/21) by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: Converts every "*.asciidoc" file in the repository to an HTML document in the
:: "/docs/" target folder.
:: -----------------------------------------------------------------------------
:: NOTE: The original subfolders structure of the project is flattened out, and
::       all documents will be in the same folder level.
:: -----------------------------------------------------------------------------
:: REQUIREMENTS -- To run this script you'll need to install:
:: - Asciidoctor (Ruby):
::   https://asciidoctor.org/
:: - Highlight >= 3.48:
::   http://www.andre-simon.de/
:: -----------------------------------------------------------------------------
@ECHO OFF
CHCP 65001 &:: Unicode (UTF-8)
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
:: The conversion script must "flatten out" all relative paths to other project
:: documents, for in the "docs/" folder the original subfolders structure is
:: flattened out. Documents use custom attributes to define relative path to
:: other project folders; this is the full list of these attributes, which must
:: be overriden to empty strings via CLI options:
::
:: * 'path_plugins'
:: -----------------------------------------------------------------------------
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
     -a path_plugins^
     -a imagesdir=img^
      %1
EXIT /B

:: EOF ::
