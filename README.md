# 🏹 Arrowscript

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![PEG](https://img.shields.io/badge/grammar-PEG-brightgreen)
![Status](https://img.shields.io/badge/status-WIP-yellow)
![Go](https://img.shields.io/badge/built%20with-Go-00ADD8?logo=go)
![TypeScript](https://badgen.net/badge/Built%20With/TypeScript/blue)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)

While I love [Mermaid](https://mermaid.js.org/), but sometimes its syntax feels a bit heavy for quick diagrams. Arrowscript is my attempt to build a fast, minimal diagram language with a near-zero learning curve. It’s useful for sketching out ideas in plain text and supports the most common diagram types with a single, unified syntax.

## 📝 Example Syntax

### Flowchart

```arrow
diagram: flow

start = "Start"
check = "Check input"
fix = "Fix issue"
done = "Finish"

start -> check : begin
check -> fix : invalid [danger]
check -> done : valid [success]
fix -> check : retry [loop]
```

### Sequence Diagram

```arrow
diagram: sequence

agent = "Support Agent"
system = "System"

user -> agent : "I need help"
agent -> system : "Fetch logs" [info]
system -> agent : "Logs sent" [success]
agent -> user : "Issue fixed" [success]
```

### Tree

```arrow
diagram: tree

root = "Project"
design = "Design"
dev = "Development"
test = "Testing"

root -> design
root -> dev
dev -> test : next [info]
```

## 🎯Project Goals

- Learn by building
- Minimal syntax, instant rendering
- PEG-based grammar shared across Go and TypeScript
- VSCode plugin with live diagram preview
- LSP support, syntax highlighting, and error reporting
- Export to SVG, PNG, ASCII
- Web playground with editor and live preview

## 🛠 Tech Stack


| Component | Tool/Language |
|-----------|---------------|
| Grammar | .peg PEG grammar |
| Go Parser | [Pigeon](https://github.com/mna/pigeon) |
| JS Parser | [Peggy](https://github.com/pegjs/pegjs) |
| Rendering | SVG, ASCII, PNG |
| Playground | TypeScript + D3 |
| Editor Plugin | VSCode + LSP |

## 🚧 Development

This is very much a work in progress. The grammar is defined and the parsers have been generated. Next steps are:

- Test the parsers.
- Build full flow from grammar to parser to AST to renderer.
- Create the web playground.
- Create the VSCode plugin.

## 🤝 Contributing

If Arrowscript sounds useful or fun, feel free to jump in! Help is welcome, whether with rendering, UI, testing, docs, or ideas.
