# CONTRIBUTING

Guidelines to collaborative editing and contens submissions to the __Cosmigo Pro Motion Assets__ project:

- https://github.com/tajmone/pmotion-assets

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Eligible Contents](#eligible-contents)
- [Contents License](#contents-license)
- [README Files](#readme-files)
- [AsciiDoc Files](#asciidoc-files)

<!-- /MarkdownTOC -->

-----

Contributions to the project are warmly welcomed. As a matter of fact, this repository was conceived from its onset with contributions from the Pro Motion community in mind. We just ask you to read this document to make sure your contributions follow a few general guidelines.

Far from being some divine-ordered rules set on stone, the goal of these guidelines is just to provide consistency across the project and ensure that all contributors are on the same wavelenght regarding its organization. As such, these guidelines are subject to change in order to accomadate new needs as the project evolves and contributions flow in.

We'd like to bend guidelines to users' needs, instead of users and contributors having to bend to rigid rules.

So, if you deem that new approaches should be taken, different standards adopted, and guidelines changed, feel free to share your thought about it by [opening an Issue].


# Eligible Contents

The goal of this project is create a collaboratively maintained collection of Pro Motion assets — documents, code, and whatever else might be useful to PM users.

As a rule of thumb, resources which can be considered an independent product in its own right (e.g. a plugin) don't belong here, but you can add a review and link to it in this project.

On the other hand, documenation, tutorials and reusable templates and material (including code) are eligible contents for this project. Although this is a rather vague definition, the whole idea is that this project should serve as a reference point of users and developers looking for assets to work with Pro Motion.

Code templates fall in this category for they are sharable assets that can grow in time through users contributions, and therefore this project would serve as their reference point. A full fledged plugin, on the other hand, is not a truely reusable resource (even when open sourced) and, although its source code might help building similar tools, it can't be viewed as a general purpose PM asset.

Again, these are general guidelines thought-of at the time of the project creation. Through actual use and real contributions the whole project and its guidelines might be reshaped to the real needs of the PM community.

# Contents License

All submitted assets and contents need to meet the following criteria:

- __Legitimacy__ — all assets must be legally redistributable, without
copyright infringement; third party text contents must be legally and legitimatly reproduced and duely credit their authors. If in doubt reagarding third party assets, always contact the original author for clarifications and/or to seek permission.
- __FOSS License__ — all assets must be released under permissive free and open source (FOSS) license compatible with this project and its license ([Apache License v2.0]). Assets in this project need to be usable by its end users.
- __License File__ — every asset should come with a full license file. Eligible third party assets should already ship with their own license file, just include it. If you're adding assets created by yourself, you must provide a FOSS license file.
- __GitHub Compliance__ — all contributed material must be in compliance to [GitHub Terms of Service] since the [Cosmigo Pro Motion Assets] project is hosted on GitHub and it's therefore bound to those terms.

As a general rule, a `LICENSE` file inside a folder implies that all assets within that folder are governed by the terms of that license. In case of folders hosting mulitple differently-licensed assets, license terms and credits are clarified in the `README` file that governs that folder.

Assets without any license indication are implicitly governed by the [Apache License v2.0] of this project (e.g. batch scripts and other assets created for project maintainance). It would be impractical to add a license for each and every small asset created for the sole purpose of scaffolding and maintaining the project (scripts, CSS, READMEs, etc.). Similar project-accessory contributions are implicitly part of the overall project, and we assume that contributors understand this when commiting to the project (after all, they're commiting to a licensed project). The stricter license guidelines outlined above are intended for those resources which are more likely going to be taken from this project and reused elsewhere, on their own — by providing their `LICENSE` files we are both protecting them and making them easier to reuse. Furthermore, assets which already have a license of their own must retain their license; and assets created _ad hoc_ for this project should have a license of their own so that their author can be duely credited when they are used elsewhere.

Sometimes a user might find a useful code or text snippet published on a public forum (or a [Gist]) and ask its author permission to reuse it in other projects, thus obtaining a generic permission to do so by means of a simple "yes" answer. This is an acceptable practice and only requires adding a statement crediting the original author and mentioning that permission was obtained to do so. In similar cases, it's not possible to assign a specific license to the reproduced material (only its author would have the right to do so), and the asset will simply fall under the generic terms of the project ([Apache License v2.0]) which is a permissive license aimed at protecting authorship and copyright. But when dealing with large/complex assets that go beyond a mere snippet of text or code (e.g. a full article, a code library) a more formal approach is required, contacting the author and asking him/her to release the asset under an explicit FOSS license.

# README Files

All README files in this project are in [GitHub Flavored Markdown]  (GFM) and this is the preferred format for the sake of consistency across the project. Users contributing their own assets as folders are free to use any of the [markup formats supported by GitHub] for their README files and other documentation, but we ask them to use GFM if possible.

Most GFM documents in this project contain a Table of Contents auto-genereated via the [MarkdownTOC] package for [Sublime Text 3], which relies on some commented tags inside the document to know where to inject the TOC and to retrive its settings:

```markdown
**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->
⋮
<!-- /MarkdownTOC -->
```

If you don't have access to [Sublime Text 3] editor and the [MarkdownTOC] package, then don't touch the TOC block when editing `README.md` files and other GFM docs — and don't delete/edit the TOC tags! Instead, mention it in your PR comments so that the maintainer can auto-update the TOC for you during the review process, before merging the PR into `master` branch.

Any manual editing of the TOC would be lost when the TOC is automatically regenreated by [MarkdownTOC].


# AsciiDoc Files

Every AsciiDoc file with the `*.asciidoc` extension will be converted to an HTML document inside the [`/docs/`][docs] folder. Therefore, when contributing an AsciiDoc file intended only for previewing on GitHub, use the `*.adoc` extension instead (unless you _do_ want it to be also converted as an HTML doc in its own right).

GitHub live preview renders `*.adoc` and `*.asciidoc` files alike, but the conversion script in this project will only convert `*.asciidoc` files to HTML. Using different file extensions is our means of distinguishing between Pro Motion documentation and generic project documents (READMEs, etc.) which are not PM assets in their own right.



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- project files & folders -->

[docs]:     ./docs/     "Navigate folder"

<!-- References -->

[Apache License v2.0]: http://www.apache.org/licenses/LICENSE-2.0 "View the full text of the Apache License v2.0 at www.apache.org"
[Cosmigo Pro Motion Assets]: https://github.com/tajmone/pmotion-assets
[Gist]: https://gist.github.com/ "Learn more about GitHub Gists"
[GitHub Flavored Markdown]: https://guides.github.com/features/mastering-markdown/ "Discover GitHub Flavored Markdown"
[GitHub Terms of Service]: https://help.github.com/articles/github-terms-of-service/ "Read GitHub Terms of Service"
[markup formats supported by GitHub]: https://github.com/github/markup#markups "View the full list of markup syntaxes supported by GitHub"
[opening an Issue]: https://github.com/tajmone/pmotion-assets/issues/new "Click me to open an issue on this project!"

<!-- 3rd party resources -->

[MarkdownTOC]: https://packagecontrol.io/packages/MarkdownTOC "Visit the Markdown​TOC page at PackageControl.io"
[Sublime Text 3]: https://www.sublimetext.com/ "Visit Sublime Text website"

<!-- EOF -->
