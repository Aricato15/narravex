# Intent: knowledge

Goal: capture the facts, data and relationships a deck could present, traceable to their source.

## What to look for
- Statements, definitions, figures, units, qualifiers, dates, caveats and source notes, verbatim where it matters.
- Structure: hierarchy, groupings, process order, comparisons, arrow directions, semantic colours.
- Tables and chart data. Use real values from the file (table cells, spreadsheet ranges, embedded chart data). If a chart exists only as an image, record what is visible as an observation and mark its values unavailable; never turn pixel estimates into data.

## Method
- Every item carries `SRC-###` (or the pending hash) plus a locator such as `p.17`, `slide 4`, `§3.2` or `Sheet1!B2:D9`.
- Check working/_knowledge_folder/index.md and relevant topics first. Propose adding to an existing topic before creating a new one. A long document usually maps to several topics; map by section, not by whole file.
- Propose only what is relevant to the deck's brief. Record the rest in the extraction notes, not in topics.
- Conflicts with confirmed items or with another source: surface both versions with locators and ask. Do not overwrite.
- Everything starts as `proposed`. Extraction is not confirmation.

## Proposal targets
New topics (from _template/forms/topic.md), new or changed items under existing topics, supporting-reference entries, open questions. Name slides that use any topic you would change.
