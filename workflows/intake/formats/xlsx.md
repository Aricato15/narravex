# Format: spreadsheets (xlsx, csv)

- Record sheet names, header rows, units, number formats, merged cells, formulas versus values, hidden sheets or rows, and notes.
- Cell values are real data. Preserve precision; do not round. Note when a value is a formula result.
- Charts inside the workbook: read series ranges and chart type.
- Locator: `Sheet!A1:D20`.
- Large sheets: summarise structure in extraction.md and store full ranges in sections/ as CSV.
- Tooling: csv needs none. For xlsx look for openpyxl or equivalent. Report if none; do not install without asking.
