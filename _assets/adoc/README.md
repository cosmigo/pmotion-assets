# Asciidoctor Assets

This folder contains some assets required by the [Asciidoctor]  (Ruby) toolchain in [`../../docs_src/`][docs_src] to build the HTML documents in [`../../docs/`][docs] folder.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Credits](#credits)
    - [Highlight Extension](#highlight-extension)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`docinfo.html`][docinfo] — shared docinfo file to integrate custom CSS.
- [`highlight-treeprocessor_mod.rb`][mod.rb] — extension for Highlight integration.

The [`docinfo.html`][docinfo] is required in the toolchain to add extra CSS styles that provide custom color themes to syntax highlighted code in the final HTML documents.

# Credits

## Highlight Extension

The [`highlight-treeprocessor_mod.rb`][mod.rb] file was adapted by Tristano Ajmone from the original file [`highlight-treeprocessor.rb`][rb upstream] taken from the [Asciidoctor Extensions Lab] (commit [c9ce3ab]), Copyright (C) 2014-2016
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
[mod.rb]: ./highlight-treeprocessor_mod.rb

[docs]: ../../docs/   "Navigate to HTML documents output folder"
[docs_src]: ../../docs_src/   "Navigate to AsciiDoc toolchain folder"

<!-- third party -->

[Asciidoctor]: https://asciidoctor.org/ "Visit the Asciidoctor website"
[rb upstream]: https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/18bdf62/lib/highlight-treeprocessor.rb
[Asciidoctor Extensions Lab]: https://github.com/asciidoctor/asciidoctor-extensions-lab/ "Visit the Asciidoctor Extensions Lab project"
[c9ce3ab]: https://github.com/asciidoctor/asciidoctor-extensions-lab/commit/c9ce3ab421c5d47f1178b57a4a5894811f9eb945

<!-- EOF -->
