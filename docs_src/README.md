# Pro Motion Documents Sources

AsciiDoc source files, scripts and assets to build the HTML documents inside the [`../docs/`][docs] folder.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Build Instructions](#build-instructions)
- [Toolchain Dependencies](#toolchain-dependencies)
- [System Requirements](#system-requirements)
    - [Installing Ruby on Windows](#installing-ruby-on-windows)
    - [Installing Asciidoctor](#installing-asciidoctor)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/img_src/`][img_src] — images sources.
- [`BUILD.bat`][BUILD.bat] — batch file to build the docs.

# Build Instructions

Run the batch script:

- [`BUILD.bat`][BUILD.bat]

The script will iterate over every "`*.asciidoc`" file inside the repository and convert it to an HTML document in the target [`../docs/`][docs] folder.

# Toolchain Dependencies

Pleas note that the build toolchain depends on some assets stored elsewere in the project:

- [`../_assets/`][_assets] — main assets folder:
    - [`/adoc/`][adoc] — docinfo files and Asciidoctor extensions.
    - [`/haml/`][haml] — [customized Haml HTML5 templates].
    - [`/hl/`][hl] — Highlight langDefs and assets.

# System Requirements

To build the document from AsciiDoc to HTML you'll need the following tools:

- [Highlight]
- [Ruby] + [Asciidoctor Gem]

## Installing Ruby on Windows

If you're using Windows, you should install Ruby via [RubyInstaller], which is also available as a [Chocolatey package][Choco Ruby] (see [Chocolatey] and [Chocolatey GUI]).

## Installing Asciidoctor

Once Ruby is installed on your system, open a shell and type:

    gem install asciidoctor


<!-----------------------------------------------------------------------------
                                REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files & folders -->

[_assets]: ../_assets/ "Navigate to the assets folder"
[adoc]:  ../_assets/adoc/ "Navigate folder"
[docs]: ../docs/ "Navigate folder"
[haml]:  ../_assets/haml/ "Navigate folder"
[hl]:  ../_assets/hl/ "Navigate folder"
[img_src]: ./img_src/ "Navigate folder"

[BUILD.bat]: ./BUILD.bat "View source file"

<!-- document cross-reference links -->

[customized Haml HTML5 templates]: ../_assets/README.md#asciidoctor-haml-templates "Click here for more info on the 'Asciidoctor Haml Templates' used in this project"


<!-- dependencies -->

[Asciidoctor Gem]: https://github.com/asciidoctor/asciidoctor#installation
[Highlight]: http://www.andre-simon.de/zip/download.php

[Ruby]: https://www.ruby-lang.org
[RubyInstaller]: https://rubyinstaller.org/downloads/
[Choco Ruby]: https://chocolatey.org/packages/ruby

[Chocolatey GUI]: https://chocolatey.org/packages/ChocolateyGUI
[Chocolatey]: https://chocolatey.org

<!-- third party -->

[Asciidoctor Backends]: https://github.com/asciidoctor/asciidoctor-backends "Visit the Asciidoctor Backends project"
[Haml HTML5 templates]: https://github.com/asciidoctor/asciidoctor-backends/tree/master/haml/html5


<!-- EOF -->
