# Sass Source Files

This folder contains the Sass/SCSS sources to build the custom CSS stylesheets used in [Asciidoctor]  (Ruby) toolchain to add syntax highlighting themes for code blocks highligthed via [André Simon]’s [Highlight] tool.

The CSS defines various higlighting themes targetting specific languages, plus a default fallback theme for all languages that don't have a dedicated theme:

|    lang    |           theme            |  mood |
|------------|----------------------------|-------|
| default    | Base16 Google              | light |
| pseudocode | Base16 Eighties            | dark  |
| C++        | Base16 Atelier Sulphurpool | light |
| Delphi     | Base16 Tomorrow            | dark  |
| EBNF       | Base16 Solarized           | light |


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [System Requirements](#system-requirements)
    - [Installing Dart Sass](#installing-dart-sass)
- [Credits](#credits)
    - [Base16-Sass Color Schemes](#base16-sass-color-schemes)
    - [Sass Boilerplate](#sass-boilerplate)

<!-- /MarkdownTOC -->

-----

# Folder Contents

Sass sources:

- [`styles.scss`][styles] — main stylesheet module:
    + [`_asciidoctor.scss`][asciidoctor scss] — customize Asciidoctor native elements.
    + [`_base16-atelier-sulphurpool.scss `][b16_atelier-sulphurpool] — Base16 color scheme.
    + [`_base16-eighties.scss `][b16_eighties] — Base16 color scheme.
    + [`_base16-google-dark.scss `][b16_google] — Base16 color scheme.
    + [`_base16-solarized-dark.scss `][b16_solarizedk] — Base16 color scheme.
    + [`_base16-tomorrow-night.scss `][b16_tomorrow-night] — Base16 color scheme.
    + [`_color-schemes.scss`][color-schemes] — defines color schemes and palettes.
    + [`_default-theme.scss`][default-theme] — default fallback Highlight theme.
    + [`_fonts-ligatures.scss`][ligatures] — enables code ligatures for specific languages (in fallback theme).
    + [`_fonts.scss`][fonts] — fonts settings.
    + [`_helpers.scss`][helpers] — mixins and helpers collection.
    + [`_lang_cpp.scss`][lang_cpp] — Highlight theme for C++.
    + [`_lang_delphi.scss`][lang_delphi] — Highlight theme for Delphi.
    + [`_lang_ebnf.scss`][lang_ebnf] — Highlight theme for EBNF
    + [`_lang_pseudocode.scss`][lang_pseudocode] — Highlight theme for pseudocode

Scripts:

- [`build.sh`][build.sh]
- [`watch.sh`][watch.sh]

Builds to [`../../docs/css/styles.css`][styles.css].


# System Requirements

> __IMPORTANT__ — On March 12, 2019 this project has switched from using [Ruby Sass] to the newest [Dart Sass] because starting from March 26, 2019 Ruby Sass will no longer be maintained.
>
> Since Dart Sass behavior is slightly different from Ruby Sass, anyone working on the repository Sass sources must ensure to switch to Dart Sass to avoid creating divergent CSS stylesheets.


## Installing Dart Sass

To build the CSS stylesheets you'll need to install [Dart Sass] on your machine:

- [Dart] + [Dart Sass]

The easiest way to install Dart Sass on Windows, and keep it always updated, is to install it via Chocolatey:

- https://chocolatey.org/packages/sass


# Credits

## Base16-Sass Color Schemes

- https://github.com/tajmone/Base16-Sass

The following color schemes were taken from the [Base16 Sass] project, by Tristano Ajmone:

- __Base16 Atelier Sulphurpool__ — by [Bram de Haan].
- __Base16 Eighties__ — by [Chris Kempson].
- __Base16 Google__ — by [Seth Wright].
- __Base16 Tomorrow__ — by [Chris Kempson].
- __Base16 Solarized__ — by [Ethan Schoonover].

[Base16 Sass] is a derivative work from Chris Kempson's [Base16-builder], and is released under MIT License:

```
MIT License

Copyright (c) 2019 Tristano Ajmone <tajmone@gmail.com>
https://github.com/tajmone/Base16-Sass

Copyright (c) 2012 Chris Kempson (http://chriskempson.com)
https://github.com/chriskempson/base16-builder

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

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

[build.sh]: ./build.sh "View script source"
[watch.sh]: ./watch.sh "View script source"

[styles.css]: ../../docs/css/styles.css "View source file"

<!-- Sass/SCSS -->

[asciidoctor scss]: ./_asciidoctor.scss "View source file"
[b16_atelier-sulphurpool]: ./_base16-atelier-sulphurpool.scss "View source file"
[b16_eighties]: ./_base16-eighties.scss "View source file"
[b16_google]: ./_base16-google-dark.scss "View source file"
[b16_solarizedk]: ./_base16-solarized-dark.scss "View source file"
[b16_tomorrow-night]: ./_base16-tomorrow-night.scss "View source file"
[color-schemes]: ./_color-schemes.scss "View source file"
[default-theme]: ./_default-theme.scss "View source file"
[fonts]: ./_fonts.scss "View source file"
[helpers]: ./_helpers.scss "View source file"
[lang_cpp]: ./_lang_cpp.scss "View source file"
[lang_delphi]: ./_lang_delphi.scss "View source file"
[lang_ebnf]: ./_lang_ebnf.scss "View source file"
[lang_pseudocode]: ./_lang_pseudocode.scss "View source file"
[ligatures]: ./_fonts-ligatures.scss "View source file"
[styles]: ./styles.scss "View source file"

<!-- dependencies -->

[Sass]: https://sass-lang.com "Visit Sass website"
[Dart Sass]: https://github.com/sass/dart-sass "Visit Dart Sass repository on GitHub"
[Ruby Sass]: https://sass-lang.com/ruby-sass "Visit Ruby Sass homepage"
[Choco Sass]: https://chocolatey.org/packages/sass "View the Chocolatey package for Dart Sass"

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

[Base16 Sass]: https://github.com/tajmone/Base16-Sass "Visit the 'Base16 Sass' project"

[Highlight]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"

[Asciidoctor]: https://asciidoctor.org/ "Visit the Asciidoctor website"

<!-- people -->

[Bram de Haan]:     https://atelierbramdehaan.nl "Visit Bram de Haan's website"
[Chris Kempson]:    http://chriskempson.com      "Visit Chris Kempson's website"
[Seth Wright]:      http://sethawright.com       "Visit Seth Wright's website"
[André Simon]:      http://www.andre-simon.de/   "Visit André Simon's website"
[Ethan Schoonover]: http://ethanschoonover.com/  "Visit Ethan Schoonover website"
<!-- EOF -->
