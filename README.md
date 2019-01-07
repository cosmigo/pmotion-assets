# Cosmigo Pro Motion Assets

- https://github.com/tajmone/pmotion-assets

A collection of assets for [Pro Motion NG], the pixel drawing and animation software by [Cosmigo].

Repository created and maintained by [Tristano Ajmone].


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Disclaimer](#disclaimer)
- [Project Contents](#project-contents)
- [The HTML Docs Folder](#the-html-docs-folder)
- [License](#license)
- [Credits](#credits)
- [External Links](#external-links)

<!-- /MarkdownTOC -->

-----

# Introduction

The goal of this repository is to provide a collection of useful assets for Cosmigo Pro Motion NG, ranging from documentation, technical specifications of images, animations, palettes and pixeal art fonts format, to plugins code templates and intefaces in various programming languages, and community contributed assets like color formulas, palettes, etc.

Hopefully, these resources will be useful to both Pro Motion NG users as well as to other PM NG related projects, and version control via Git should provide an efficient way of keeping the assets always up to date, both locally as well as inside other repositories.

I would like to thank Jan Zimmerman for all the personal support and time dedication, and for having kindly allowed me to utilize the original Pro Motion assets found in this project.


# Disclaimer

The creator of this repository ([Tristano Ajmone]) is not affiliated to [Cosmigo GmbH]. Although permission was asked to reproduce the material by Cosmigo herein contained, the granted permissions don't imply any official endorsment of this project by Cosmigo GmbH. Furthermore, Jan Zimmerman and Cosmigo GmbH can't be held accountable for any inacurracies or mistakes found in this project.

This project is _not_ intended as a replacement for the official [Pro Motion documentation][PM Docs] and no guarantees are made that its contents will always be up to date with the latest Pro Motion NG developements. End users of this project should always refer to the official Pro Motion NG channels, provided by Cosmigo, to obtain up to date information and official assets:

- [Cosmigo website][Cosmigo]
- [Pro Motion Community Forum][PM Forum]
- [Pro Motion NG Documention][PM Docs]

# Project Contents

- [`/docs/`][docs] — HTML documents.
- [`/docs_src/`][docs_src] — AsciiDoc sources and assets to build the HTML docs.
- [`/plugins/`][plugins] — resources for plugin developers.
- [`CONTRIBUTING.md`][CONTRIBUTING] — guidelines for submitting contents and collaborating.
- [`LICENSE`][LICENSE] — Apache 2.0 license.

# The HTML Docs Folder

- [`/docs/`][docs]

The [`/docs/`][docs] folder contains an HTML converted version of every `*.asciidoc` file found inside the repository. This folder was created for the following purposes:

- Enable end users to read local copies of the documents without needing an AsciiDoc viewer/converter.
- The contents of that folder can be served over the WWW via [GitHub Pages].
- Direct links to these docs won't break if their AsciiDoc sources are moved around in the project.

All HTML documents are placed directly in the `docs/` folder, without replicating the directory structure of their AsciiDoc sources within the project. Therefore, even if the repository folder structure is reorganized, links to the HTML docs will remain unchanged (unless the AsciiDoc source files are renamed).

The whole idea is that `*.asciidoc` files should be placed in the folder to which they belong contents-wise, so that they can be read on GitHub while navigating the repository. GitHub provides live HTML rendering of AsciiDoc, so these documents will be previewable in a nicely formatted manner on GitHub.

The HTML converted docs, on the other hand, are intended for providing direct links which won't (shouldn't) break over the course of time, as well as for offline reading via the browser for end users who cloned the repository locally but might not have the required tools to view/convert AsciiDoc files.

Regarding the possibility of serving the HTML files over the Internet (statically) via [GitHub Pages], it can be done [using the `docs/` folder in the `master` branch][GHP How] of every repository (instead of serving the whole `master` branch over the Internet, or using a separate `gh-pages` branch). Hence, the `docs/` folder was chosen since it's treated as a special folder in GitHub when it comes to serving web contents. Although this is entirely optional, I've chosen to leave this possibility open, so that any GitHub clone of the repository can be set to serve these docs over the WWW.

[GHP How]: https://help.github.com/articles/configuring-a-publishing-source-for-github-pages/#publishing-your-github-pages-site-from-a-docs-folder-on-your-master-branch "Read GitHub Help on how to do this"


# License

- [`LICENSE`][LICENSE]

Unless otherwise specified, all assets are release under [Apache License v2.0]; third party assets and components retain their original license. For the sake of simplicity, any new assets contributed to the project should fall under the same license, or an Apache-compatible license.


# Credits

This project uses third party resources, either readapted or in their original form. Full credits and licenses can be found in the assets subfolders; here's an abridged list of authors' aknowledgments and their resources:

- __[André Simon]__ — [Highlight] configuration and langDefs (GNU GPL v3.0).
- __[Bram de Haan]__ — [Base16 Atelier Sulphurpool] color scheme (MIT License).
- __[Chris Kempson]__ — [Base16 Eighties] and [Base16 Tomorrow] color schemes (MIT License).
- __[Dan Allen]__ and __[the Asciidoctor project]__ — [Asciidoctor Backends] (MIT License).
- __[Jan Zimmerman]__ (PM author) — Pro Motion documentation and assets.
- __[Peter Mescalchin]__ — [Sass boilerplate] (MIT License).
- __[Seth Wright]__ — [Base16 Google] color scheme (MIT License).
- __[The Asciidoctor project]__ — [Asciidoctor Extensions Lab] (MIT License).
- __[Thiadmer Riemersma]__ — [C implementation of PM DDE plugin interface][C DDE].

# External Links

- [Cosmigo website][Cosmigo]
- [Pro Motion Community Forum][PM Forum]
- [Pro Motion NG Documention][PM Docs]
- [Pro Motion NG Blog][PM Blog]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- project files & folders -->

[docs]:     ./docs/     "Navigate to folder"
[docs_src]: ./docs_src/ "Navigate to folder"
[plugins]:  ./plugins/  "Navigate to folder"

[C DDE]: ./docs/DDE_C.html "View document"
[CONTRIBUTING]:  ./CONTRIBUTING.md   "Read the contributors' guidelines"
[LICENSE]:  ./LICENSE   "View file"


<!-- Cosmigo & PM -->

[Cosmigo GmbH]: https://www.cosmigo.com/pixel_animation_software/support "More info about Cosmigo GmbH"
[Cosmigo]: https://www.cosmigo.com/ "Visit Cosmigo website"
[Pro Motion NG]: https://www.cosmigo.com/ "Visit Pro Motion NG website"
[Pro Motion]: https://www.cosmigo.com/ "Visit Pro Motion website"

[PM Docs]: https://www.cosmigo.com/promotion/docs/onlinehelp/main.htm "View Pro Motion NG documentation online"
[PM Forum]: https://community.cosmigo.com/ "Visit the Cosmigo community forum"
[PM Blog]: https://www.cosmigo.com/blog "Visit Cosmigo official blog"

<!-- people -->

[André Simon]: http://www.andre-simon.de "Visit André Simon's website"
[Bram de Haan]: https://atelierbramdehaan.nl "Visit Bram de Haan's website"
[Chris Kempson]: http://chriskempson.com "Visit Chris Kempson's website"
[Dan Allen]: https://github.com/allenan "Visit Dan Allen's GitHub profile"
[Jan Zimmerman]: https://www.cosmigo.com/ "Visit Cosmigo website"
[Peter Mescalchin]: http://magnetikonline.com "Visit Peter Mescalchin's website"
[Seth Wright]: http://sethawright.com "Visit Seth Wright's website"
[Thiadmer Riemersma]: http://www.compuphase.com/ "Visit Thiadmer Riemersma's website CompuPhase.com"
[Tristano Ajmone]: https://github.com/tajmone "Visit Tristano Ajmone's profile on GitHub"

<!-- organizations -->

[The Asciidoctor project]: https://github.com/asciidoctor/ "Visit the Asciidoctor project on GitHub"

<!-- 3rd party resources -->

[base16-builder]: https://github.com/chriskempson/base16-builder

[Base16 Atelier Sulphurpool]: https://github.com/chriskempson/base16-builder/blob/master/schemes/atelier-sulphurpool.yml "View upstream source file"
[Base16 Eighties]: https://github.com/chriskempson/base16-builder/blob/master/schemes/eighties.yml "View upstream source file"
[Base16 Google]: https://github.com/chriskempson/base16-builder/blob/master/schemes/google.yml "View upstream source file"
[Base16 Tomorrow]: https://github.com/chriskempson/base16-builder/blob/master/schemes/tomorrow.yml "View upstream source file"


[Highlight]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"

[Sass boilerplate]: https://github.com/magnetikonline/sass-boilerplate "Visit Sass boilerplate repository"

[Asciidoctor Extensions Lab]: https://github.com/asciidoctor/asciidoctor-extensions-lab/ "Visit the Asciidoctor Extensions Lab project"

[Asciidoctor Backends]: https://github.com/asciidoctor/asciidoctor-backends "Visit the Asciidoctor Backends project"

<!-- References -->

[GitHub Pages]: https://pages.github.com/ "Visit GitHub Pages website"

<!-- licenses -->

[Apache License v2.0]: http://www.apache.org/licenses/LICENSE-2.0 "View the full text of the Apache License v2.0 at www.apache.org"


<!-- EOF -->