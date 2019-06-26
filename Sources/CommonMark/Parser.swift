import Foundation

func parseMarkdownToAST(markdown: String) -> Document {
  return parseLinesToAST(lines: markdown
    .replacingOccurrences(of: "\r\n", with: "\r")
    .replacingOccurrences(of: "\r", with: "\n")
    .split(separator: "\n", omittingEmptySubsequences: false)
  )
}

func isBlank(line: Substring) -> Bool {
  return line.allSatisfy {
    $0.isWhitespace
  }
}

func parseLinesToAST(lines: [Substring]) -> Document {
  var document = Document()

  for line in lines {
    if isBlank(line: line) {

    } else {
      document.contents.append(Paragraph(contents: [Text(contents: String(line))]))
    }
  }

  return document
}
