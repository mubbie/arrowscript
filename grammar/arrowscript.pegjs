File        = _ DiagramDecl NL Statement*

DiagramDecl = "diagram:" _ DiagramType

DiagramType = "flow" / "tree" / "sequence"

Statement   = _ (Comment / NodeDef / EdgeDef)? _ NL

Comment     = "#" (!NL .)*

NodeDef     = Identifier _ "=" _ QuotedLabel

EdgeDef     = NodeRef _ Arrow _ NodeRef Label? Style?

NodeRef     = Identifier / QuotedLabel

Arrow       = "->" / "<->"

Label       = _ ":" _ LabelText

Style       = _ "[" StyleType "]"

StyleType   = "success" / "danger" / "warning" / "info" / "loop"

QuotedLabel = "\"" QuotedText "\""

QuotedText  = (Escape / !["] .)*

Escape      = "\\\""

LabelText   = (!["\n\r"] .)+

Identifier  = [a-zA-Z_] [a-zA-Z0-9_]*

_           = [ \t]*

NL          = "\r\n" / "\n"