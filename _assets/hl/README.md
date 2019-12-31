# Highlight Resources

This directory tree contains assets for customizing usage of [André Simon]’s [Highlight] tool, employed to provide syntax highlighting in Asciidoctor conversion to HTML of the project documents.

Unless otherwise specified, these assets are either derivative or verbatim copies of assets that ship with the Highlight package, and are licensed under GNU GPL v3. The GPL license does not affect the converted documents.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Configuration Notes](#configuration-notes)
- [Derivative Work Notes](#derivative-work-notes)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Folder Contents

- [`/langDefs/`][langDefs] — overrides Highlight default `langDefs/` folder:
    + [`delphi.lang`][delphi.lang] — Delphi syntax definition.
    + [`ebnf.lang`][ebnf.lang] — Custom EBNF syntax definition.
    + [`pseudocode.lang`][pseudocode.lang] — Pseudocode syntax definition.
- [`filetypes.conf`][filetypes] — custom Highlight languages configurations.
- [`LICENSE`][LICENSE] — GNU GPL v3.

# Configuration Notes

This directory tree was created to enable using custom syntaxes with Highlight. Any syntaxes inside [`./langDefs/`][langDefs] will be given priority over the native syntaxes that ship with Highlight — i.e. either new syntaxes not present in the package, or customized syntaxes that will override the native ones.

In order to tell Highlight to use this directory to load configurations, the environment variable `HIGHLIGHT_DATADIR` must be set with an _absolute path_ to point to this folder, before invoking Highlight.

For example, if you were to use a batch script executed from inside this folder, this could be done via:

```batch
SET "HIGHLIGHT_DATADIR=%~dp0hl\"
```

Highlight will still use the native syntaxes if no matching file is found in `./langDefs/`.

The [`filetypes.conf`][filetypes] configuration was edited to map the new custom syntaxes defined in this project to their associated file extensions — namely, Delphi:

```lua
 { Lang="delphi", Extensions={"pas", "dpr"} },
```

This wasn't strictly required for the Asciidoctor conversion toolchain, but provides a better working environment.

# Derivative Work Notes

The [`delphi.lang`][delphi.lang] syntax definition is a readaptation of the Pascal syntax ([`pas.lang`][pas.lang]) that ships with Highlight.

The [`filetypes.conf`][filetypes] configuration is a tweaked version of the same file that ships with Highlight, adapted to the needs of this project.

# License

- [`LICENSE`][LICENSE]

[Highlight] is Copyright (C) 2002-2018 by [André Simon], released under the GNU General Public License v3 terms.

The GPL license does not affect the converted documents.

<!-----------------------------------------------------------------------------
                                REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files & folders -->


[langDefs]:    ./langDefs/ "Navigate folder"
[delphi.lang]: ./langDefs/delphi.lang "View Delphi syntax definition"
[ebnf.lang]: ./langDefs/ebnf.lang "View EBNF syntax definition"
[pseudocode.lang]: ./langDefs/pseudocode.lang "View pseudocode syntax definition"

[filetypes]: ./filetypes.conf "View file"

[LICENSE]: ./LICENSE "View GNU GPL v3.0 license"

<!-- 3rd party resources -->

[Highlight]: http://www.andre-simon.de/doku/highlight/en/highlight.php "Visit Highlight website"

[pas.lang]: https://gitlab.com/saalen/highlight/blob/master/langDefs/pas.lang "View upstream source file"

<!-- people -->

[André Simon]: http://www.andre-simon.de "Visit André Simon's website"

<!-- EOF -->
