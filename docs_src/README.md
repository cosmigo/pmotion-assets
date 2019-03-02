# Pro Motion Documents Sources

AsciiDoc source files, scripts and assets to build the HTML documents inside the [`../docs/`][docs] folder. Run the batch script:

- [`BUILD.bat`][BUILD.bat]

The script will iterate over every "`*.asciidoc`" file inside the repository and convert it to an HTML document in the target [`../docs/`][docs] folder.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [System Requirements](#system-requirements)
- [Asciidoctor Haml Templates](#asciidoctor-haml-templates)
    - [Haml Templates License](#haml-templates-license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/adoc/`][adoc] — Asciidoctor assets.
- [`/haml/`][haml] — customized Haml templates ([see below][Haml sec]).
- [`/hl/`][hl] — Highlight langDefs and assets.
- [`/sass/`][sass] — Sass/SCSS stylesheets source files.
- [`BUILD.bat`][BUILD.bat] — batch file to build the docs.

# System Requirements

To build the document from AsciiDoc to HTML you'll need the following tools:

- [Highlight]
- [Ruby] + [Asciidoctor]

To build the CSS files from Sass you'll need [Sass]:

- [Ruby] + [Ruby Sass], or
- [Dart Sass]

More information on how to install these tools can be found in the README files inside the [`/adoc/`][adoc] and [`/sass/`][sass] folders.

# Asciidoctor Haml Templates

The [`/haml/`][haml] folder contains some custom Haml templates to partly override those of the Asciidoctor HTML5 backend:

- [`./haml/block_listing.html.haml`][block_listing]

This is the HTML template for Asciidoctor listings, tweaked to allow customizing code coloring themes via CSS on a per-language basis, when using [Highlight] tool for syntax highlighting.

> __IMPORTANT__ — Don't put any files other than Haml templates inside the [`/haml/`][haml] folder, or it will cause errors when trying to convert the documents via Asciidoctor! For this reason there is no README file there, and the information and credits for that folder have been placed here instead.

## Haml Templates License

The Haml files in this folder were adapted by Tristano Ajmone from the original [Haml HTML5 templates] taken from the
[Asciidoctor Backends] project, Copyright (C) 2012-2016 Dan Allen and the Asciidoctor Project, released under MIT License:

    The MIT License
    
    Copyright (C) 2018 Tristano Ajmone.
    Copyright (C) 2012-2016 Dan Allen and the Asciidoctor Project

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- project files & folders -->

[docs]: ../docs/   "Navigate folder"
[adoc]: ./adoc/    "Navigate folder"
[haml]:  ./haml/     "Navigate folder"
[hl]:   ./hl/      "Navigate folder"
[sass]: ./sass/    "Navigate folder"

[block_listing]: ./haml/block_listing.html.haml "View source file"

[BUILD.bat]: ./BUILD.bat "View source file"

<!-- document cross-reference links -->

[Haml sec]: #asciidoctor-haml-templates "Jump to section 'Asciidoctor Haml Templates'"


<!-- dependencies -->

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor#installation
[Highlight]: http://www.andre-simon.de/zip/download.php

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

[Chocolatey GUI]: https://chocolatey.org/packages/ChocolateyGUI
[Chocolatey]: https://chocolatey.org

<!-- third party -->

[Asciidoctor Backends]: https://github.com/asciidoctor/asciidoctor-backends "Visit the Asciidoctor Backends project"
[Haml HTML5 templates]: https://github.com/asciidoctor/asciidoctor-backends/tree/master/haml/html5


<!-- EOF -->
