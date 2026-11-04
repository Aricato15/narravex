# Format: PDF

- Check each page for a text layer. Use the text layer where present (method `text layer`). For scanned or image-only pages, use vision or OCR and mark confidence lower (method `OCR` / `vision`).
- Extract tables as tables, not run-on text. Check multi-column reading order.
- Extract embedded figures to media/ and note their page.
- Locator: `p.N` (printed page number if it differs from the file page, note both).
- Large PDFs: write a contents map (headings with page ranges) in extraction.md and one file per section or page range in sections/. Do not load the whole document into one pass.
- Tooling: look for an installed PDF reader or library (e.g. pdftotext, PyMuPDF, pypdf). Report if none; do not install without asking.
