other
updateRoot: anHtmlRoot

    super updateRoot: anHtmlRoot.

    SEWAFCssLibrary default updateRoot: anHtmlRoot.

	anHtmlRoot stylesheet url: (SEWAFCssLibrary / #mainOrbeonCss).

	anHtmlRoot javascript contents: SEWAFJavaScriptLibrary default jsExpandCollapseFunctions.