:: "BUILD_SASS.bat" v1.0.0 (2018/12/24) by Tristano Ajmone
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

CALL SCSS %SRC% %OUT%
EXIT /B

:: EOF ::
