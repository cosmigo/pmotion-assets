# Asciidoctor Assets

This folder contains some Asciidoctor assets required to build the HTML documents in [`../../docs/`][docs] folder.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [System Requirements](#system-requirements)
    - [Installing Ruby on Windows](#installing-ruby-on-windows)
    - [Installing Asciidoctor](#installing-asciidoctor)
- [Credits](#credits)
    - [Highlight Extension](#highlight-extension)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`docinfo.html`][docinfo] — shared docinfo file to integrate custom CSS.
- [`highlight-treeprocessor_mod.rb`][rb] — extension for Highlight integration.

# System Requirements

To build the document from AsciiDoc to HTML you'll need to install the following tools:

- [Highlight]
- [Ruby] + [Asciidoctor]

## Installing Ruby on Windows

If you're using Windows, you should install Ruby via [RubyInstaller], which is also available as a [Chocolatey package][Choco Ruby] (see [Chocolatey] and [Chocolatey GUI]).

## Installing Asciidoctor

Once Ruby is installed on your system, open a shell and type:

    gem install asciidoctor


# Credits

## Highlight Extension

The [`highlight-treeprocessor_mod.rb`][rb] file was adapted by Tristano Ajmone from the original file [`highlight-treeprocessor.rb`][rb upstream] taken from the [Asciidoctor Extensions Lab] (commit 18bdf62), Copyright (C) 2014-2016
The Asciidoctor Project, released under MIT License:

    The MIT License

    Copyright (C) 2018 Tristano Ajmone.
    Copyright (C) 2014-2016 The Asciidoctor Project

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

<!-- proj files -->

[docinfo]: ./docinfo.html
[rb]: ./highlight-treeprocessor_mod.rb

[docs]: ../../docs/   "Navigate folder"


<!-- dependencies -->

[Chocolatey GUI]: https://chocolatey.org/packages/ChocolateyGUI
[Chocolatey]: https://chocolatey.org

[Ruby]: https://www.ruby-lang.org
[RubyInstaller]: https://rubyinstaller.org/downloads/
[Choco Ruby]: https://chocolatey.org/packages/ruby

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor#installation
[Highlight]: http://www.andre-simon.de/zip/download.php


<!-- third party -->

[rb upstream]: https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/18bdf62/lib/highlight-treeprocessor.rb
[Asciidoctor Extensions Lab]: https://github.com/asciidoctor/asciidoctor-extensions-lab/ "Visit the Asciidoctor Extensions Lab project"


<!-- EOF -->
