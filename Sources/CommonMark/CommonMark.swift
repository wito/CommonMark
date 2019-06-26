public extension String {

  /// An XHTML representation of the markdown in the string.
  var renderedMarkdown: String {
    return XHTMLRenderer().render(document: parseMarkdownToAST(markdown: self))
  }

}
