# Intent: theme

Goal: learn how slides should look, including how each kind of visualization should be formatted. The file's factual content is never slide content.

## What to look for
1. **Global tokens** (working/theme/theme.json): palette with semantic meanings, heading/body fonts and sizes, background treatment, margins and spacing, shape and line style, decorative elements.
2. **Per-visualization patterns** (working/theme/patterns.json): identify each distinct visualization or layout the file shows (e.g. bar chart, line chart, table, process diagram, KPI tile, title slide, content slide). For each, note the rules that differ from the global tokens: series colour order, gridlines, axis and label size, legend position, table header fill, banding, borders, number formats, connector and arrow style. Use template/forms/pattern-entry.json.
3. **When to use it**: the data shape or content each pattern suits. A reference showing a table pattern does not say which slide needs a table; that is decided in planning and confirmed by the user.

## Method
- One reference may show several patterns; one pattern may need several references. Cite the source and region/locator for each rule.
- Separate **observed** (visible in the file) from **proposed defaults** (your fill-in for anything not shown). Label the difference.
- Fonts: identify only with evidence. Otherwise propose a widely available substitute and record it as uncertain.
- If the file is a PPTX, read theme colours, fonts and layouts from its XML rather than guessing from a render.
- Compare with existing theme.json / patterns.json. Flag conflicts with confirmed settings; do not override them silently.

## Proposal targets
theme.json token changes, new or revised `P-…` pattern entries (status `proposed`), theme-guide.md text. List the slides affected by any change to a confirmed setting.
