:: "BUILD_SASS.bat"                            v2.0.0 | 2019/03/12 | by Tristano 
:: -----------------------------------------------------------------------------
:: REQUIREMENTS -- To run this script you'll need to install either:
:: - Dart Sass (Node.js):
::   https://github.com/sass/dart-sass
:: - Ruby Sass (Ruby):
::   https://github.com/sass/ruby-sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.

SET "SRC=styles.scss"
SET "OUT=../../docs/css/styles.css"

ECHO =================================
ECHO Building CSS stylesheet from SCSS
ECHO =================================
ECHO SOURCE: %SRC%
ECHO OUTPUT: %OUT%

CALL SASS %SRC% %OUT%
EXIT /B

:: EOF ::
