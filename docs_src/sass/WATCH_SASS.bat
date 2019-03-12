:: "WATCH_SASS.bat"                            v2.0.0 | 2019/03/12 | by Tristano 
:: -----------------------------------------------------------------------------
:: REQUIREMENTS -- To run this script you'll need to install either:
:: - Dart Sass (Node.js):
::   https://github.com/sass/dart-sass
:: - Ruby Sass (Ruby):
::   https://github.com/sass/ruby-sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.
CALL BUILD_SASS.bat
ECHO ===============================
ECHO Build ^& Watch SCSS stylesheets
ECHO ===============================
CALL SASS --watch %SRC%:%OUT%
EXIT /B

:: EOF ::
