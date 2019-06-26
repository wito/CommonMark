protocol Renderer {

  /// Renders an AST `Document` to a string representation.
  func render(document: Document) -> String

  /// Renders an AST `Node` to a string representation.
  func render(node: Node) -> String

}

extension Renderer {

  func render(document: Document) -> String {
    return document.contents.map({ return render(node: $0) }).joined(separator: "\n").appending("\n")
  }

}

extension String {

  func tagged(with tag: String?) -> String {
    if let tagString = tag {
      return "<\(tagString)>\(self)</\(tagString)>"
    } else {
      return self
    }
  }

}

class XHTMLRenderer: Renderer {

  func render(node: Node) -> String {
    switch node {
    case let node as Inline:
      return node.contents
        .tagged(with: node.tag)

    case let node as Leaf:
      return node.contents
        .map({ return render(node: $0) })
        .joined(separator: "\n")
        .tagged(with: node.tag)

    case let node as Container:
      return node.contents
        .map({ return render(node: $0) })
        .joined(separator: "\n")
        .tagged(with: node.tag)

    case let node as Document:
      return "Recursion error"
    default:
      return "Node error"
    }
  }

}
