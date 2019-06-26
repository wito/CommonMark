protocol Node {
  var tag: String? { get }
}

extension Node {
  var tag: String? { return nil }
}

protocol Inline: Node {
  var contents: String { get }
}

protocol Block: Node { }

protocol Leaf: Block {
  var contents: [Inline] { get set }
}

protocol Container: Block {
  var contents: [Block] { get set }
}

// Virtual Nodes

struct Document: Container {
  var contents: [Block] = []
}

// Container Nodes

// Leaf Nodes

struct Paragraph: Leaf {
  let tag: String? = "p"
  var contents: [Inline] = []
}

// Inline Nodes

struct Text: Inline {
  let contents: String
}
