include ./mkdio

// Down is our Markdown class.
// Down new("some *markdown*!") toHtml()
Down: class {
  html: String

  init: func(=html) {}

  toHtml: func -> String {
    res := String
    doc := mkd_string(html, html length(), 0)

    if (mkd_compile(doc, 0)) {
      mkd_document(doc, res&)
      return res
    } else {
      return "markdown failed"
    }
  }

  // Shortcut:
  // Down toHtml("*hi*")
  toHtml: static func ~classLevel ( html : String ) -> String {
    return new(html) toHtml()
  }
}

// Bits of Discount we want to use
DiscountDoc: cover from MMIOT*
mkd_string: extern func (text : String, length : Int, flags : Int) -> DiscountDoc
mkd_compile: extern func (doc : DiscountDoc, flags : Int) -> Int
mkd_document: extern func (doc : DiscountDoc, text : String*) -> Int

main: func {
  Down toHtml("*hi*") println()
}


