# Sass Source Files

This folder contains the Sass/SCSS sources to build the custom CSS stylesheets used in AsciiDoc files to add syntax highlighting themes for code blocks highligthed via [André Simon]’s [Highlight] tool.

The CSS defines various higlighting themes targetting specific languages, plus a default fallback theme for all languages that don't have a dedicated theme:

|   lang  |            theme             |  mood |
|---------|------------------------------|-------|
| Delphi  | [Base16 Tomorrow]            | dark  |
| C++     | [Base16 Atelier Sulphurpool] | light |
| default | [Base16 Google]              | light |


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [System Requirements](#system-requirements)
    - [Ruby + Sass](#ruby--sass)
        - [Installing Ruby on Windows](#installing-ruby-on-windows)
        - [Ruby Sass](#ruby-sass)
    - [Dart + Sass](#dart--sass)
    - [Node.js + Sass](#nodejs--sass)
        - [Installing Node.js on Windows](#installing-nodejs-on-windows)
        - [Dart Sass JavaScript](#dart-sass-javascript)
- [Credits](#credits)
    - [Base16 Color Schemes](#base16-color-schemes)
    - [Sass Boilerplate](#sass-boilerplate)

<!-- /MarkdownTOC -->

-----

# Folder Contents

Sass sources:

- [`styles.scss`][styles] — main stylesheet module.
- [`_color-schemes.scss`][color-schemes] — defines color schemes and palettes.
- [`_default-theme.scss`][default-theme] — default fallback Highlight theme.
- [`_fonts-ligatures.scss`][ligatures] — enables code ligatures for specific languages (in fallback theme).
- [`_fonts.scss`][fonts] — fonts settings.
- [`_helpers.scss`][helpers] — mixins and helpers collection.
- [`_lang_cpp.scss`][lang_cpp] — Highlight theme for C++.
- [`_lang_delphi.scss`][lang_delphi] — Highlight theme for Delphi.

Scripts:

- [`BUILD_SASS.bat`][BUILD] 
- [`WATCH_SASS.bat`][WATCH] 

Builds to [`../../docs/css/styles.css`][styles.css].


# System Requirements

To build the CSS stylesheets you'll need to install [Sass] on your machine; there are different ways to install Sass:

- [Ruby] + [Ruby Sass]
- [Dart] + [Dart Sass]
- [Node.js] + [Dart Sass] JavaScript

Sass is migrating from Ruby to Dart, but for the purpose of this project either version should be fine (I'm still using the Ruby version), so just install the version that is more practical to you (since in this project you'll need Ruby also for Asciidoctor, you might use Sass Ruby if you don't have Chocolatey or Node.js on your system).

## Ruby + Sass

### Installing Ruby on Windows

If you're using Windows, you should install Ruby via [RubyInstaller], which is also available as a [Chocolatey package][Choco Ruby] (see [Chocolatey] and [Chocolatey GUI]) — you're going to need Ruby to build the documents of this project anyhow, because you'll need Asciidoctor too.

### Ruby Sass

Once Ruby is installed on your system, open a shell and type:

    gem install sass


## Dart + Sass

Alternatively, you can install the [Sass Chocolatey package][Choco Sass] via [Chocolatey] or [Chocolatey GUI], which comes as a binary (and fast) implementation of Sass in [Dart].

The Dart implementation of Sass is the new incarnation of Sass, it's faster and in 2019 it's going to replace the Ruby version.

## Node.js + Sass

### Installing Node.js on Windows

Download the installer from [Node.js] website.

Alternatively, you can install the [Chocolatey Node.js package][Choco Node] (also available in [LTS version][Choco Node LTS]) via [Chocolatey] or [Chocolatey GUI].

### Dart Sass JavaScript

Once [Node.js] is installed on your system, open a shell and type:

    npm install -g sass

This is a JavaScript implementation of Sass, and it's slower than the other versions.

# Credits

## Base16 Color Schemes

- [`_color-schemes.scss`][color-schemes]

The following color schemes were adapted from Chris Kempson's [base16-builder] project:

- [Base16 Atelier Sulphurpool] — by [Bram de Haan].
- [Base16 Eighties] — by [Chris Kempson].
- [Base16 Google] — by [Seth Wright].
- [Base16 Tomorrow] — by [Chris Kempson].

[Base16-builder] is released under MIT License:

    Copyright (C) 2012 [Chris Kempson](http://chriskempson.com)
    
    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    
    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Sass Boilerplate

- [`_helpers.scss`][helpers]

The `fontFace` Mixin was adapted from Sass Boilerplate project's "[`fontface.scss`][fontface]", Copyright (c) 2013 Peter Mescalchin, MIT License:
 
-  https://github.com/magnetikonline/sass-boilerplate

<!--  -->

    The MIT License (MIT)

    Copyright (c) 2013 Peter Mescalchin

    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
    the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[BUILD]: ./BUILD_SASS.bat "View source file"
[WATCH]: ./WATCH_SASS.bat "View source file"

[styles.css]: ../../docs/css/styles.css "View source file"

<!-- Sass/SCSS -->

[color-schemes]: ./_color-schemes.scss "View source file"
[default-theme]: ./_default-theme.scss "View source file"
[fonts]: ./_fonts.scss "View source file"
[helpers]: ./_helpers.scss "View source file"
[ligatures]: ./_fonts-ligatures.scss "View source file"
[styles]: ./styles.scss "View source file"
[lang_cpp]: ./_lang_cpp.scss/ "View source file"
[lang_delphi]: ./_lang_delphi.scss/ "View source file"

<!-- dependencies -->

[Sass]: https://sass-lang.com "Visit Sass website"
[Ruby Sass]: https://github.com/sass/ruby-sass
[Dart Sass]: https://github.com/sass/dart-sass
[Choco Sass]: https://chocolatey.org/packages/sass

[Ruby]: https://www.ruby-lang.org
[RubyInstaller]: https://rubyinstaller.org/downloads/
[Choco Ruby]: https://chocolatey.org/packages/ruby

[Node.js]: https://nodejs.org/en/ "Visit Node.js downloads page"
[Choco Node]: https://chocolatey.org/packages/nodejs
[Choco Node LTS]: https://chocolatey.org/packages/nodejs-lts

[Dart]: https://www.dartlang.org/ "Visit Dart website"

[Chocolatey GUI]: https://chocolatey.org/packages/ChocolateyGUI
[Chocolatey]: https://chocolatey.org

<!-- external links -->

[fontface]: https://github.com/magnetikonline/sass-boilerplate/blob/702d924/fontface.scss "View upstream source file"

[base16-builder]: https://github.com/chriskempson/base16-builder

[Base16 Atelier Sulphurpool]: https://github.com/chriskempson/base16-builder/blob/master/schemes/atelier-sulphurpool.yml "View upstream source file"
[Base16 Eighties]: https://github.com/chriskempson/base16-builder/blob/master/schemes/eighties.yml "View upstream source file"
[Base16 Google]: https://github.com/chriskempson/base16-builder/blob/master/schemes/google.yml "View upstream source file"
[Base16 Tomorrow]: https://github.com/chriskempson/base16-builder/blob/master/schemes/tomorrow.yml "View upstream source file"

[Highlight]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"

<!-- people -->

[Bram de Haan]:  https://atelierbramdehaan.nl "Visit Bram de Haan's website"
[Chris Kempson]: http://chriskempson.com      "Visit Chris Kempson's website"
[Seth Wright]:   http://sethawright.com       "Visit Seth Wright's website"
[André Simon]:   http://www.andre-simon.de/   "Visit André Simon's website"

<!-- EOF -->
