# Project Assets

Various assets required to build or test the project, along with sources of buildable assets.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Asciidoctor Haml Templates](#asciidoctor-haml-templates)
    - [Haml Templates License](#haml-templates-license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/adoc/`][adoc] — Asciidoctor (Ruby) assets.
- [`/haml/`][haml] — customized Haml HTML5 templates ([see below][Haml sec]).
- [`/hl/`][hl] — Highlight langDefs and assets.
- [`/sass/`][sass] — Sass/SCSS stylesheets source files.
- [`/sh/`][sh] — Bash scripts assets.

# Asciidoctor Haml Templates

The [`/haml/`][haml] folder contains some custom Haml templates to partly override those of the Asciidoctor HTML5 backend:

- [`./haml/block_listing.html.haml`][block_listing]

This is the HTML template for Asciidoctor listings, tweaked to allow customizing code coloring themes via CSS on a per-language basis, when using [Highlight] tool for syntax highlighting.

> __IMPORTANT__ — Don't put any files other than Haml templates inside the [`/haml/`][haml] folder, or it will cause errors when trying to convert the documents via Asciidoctor! For this reason there is no README file there, and the information and credits for that folder have been placed here instead.

## Haml Templates License

The Haml files used in this project were adapted by Tristano Ajmone from the original [Haml HTML5 templates] taken from the
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

[adoc]: ./adoc/ "Navigate to Asciidoctor assets folder"
[haml]: ./haml/ "Navigate to Haml templates folder"
[hl]: ./hl/ "Navigate to Highlight assets folder"
[sass]: ./sass/ "Navigate to Sass sources folder"
[sh]: ./sh/ "Navigate to Bash scripts assets folder"

[block_listing]: ./haml/block_listing.html.haml "View source file"

<!-- document cross-reference links -->

[Haml sec]: #asciidoctor-haml-templates "Jump to section 'Asciidoctor Haml Templates'"

<!-- dependencies -->

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor#installation "Visit the Asciidoctor (Ruby) repository on GitHub"
[Highlight]: http://www.andre-simon.de/zip/download.php

<!-- third party -->

[Asciidoctor Backends]: https://github.com/asciidoctor/asciidoctor-backends "Visit the Asciidoctor Backends project"
[Haml HTML5 templates]: https://github.com/asciidoctor/asciidoctor-backends/tree/master/haml/html5



<!-- EOF -->
