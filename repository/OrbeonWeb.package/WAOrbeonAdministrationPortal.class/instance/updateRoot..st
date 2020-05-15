other
updateRoot: anHtmlRoot

    super updateRoot: anHtmlRoot.

    SEWAFCssLibrary default updateRoot: anHtmlRoot.

	anHtmlRoot stylesheet url: (SEWAFCssLibrary / layout getOrbeonCssFileName).

	anHtmlRoot javascript contents: SEWAFJavaScriptLibrary default jsExpandCollapseFunctions.