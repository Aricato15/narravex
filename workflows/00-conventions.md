# Conventions

Shared rules for IDs, names and statuses. Other workflows refer here instead of repeating them.

## IDs
- Never reuse or renumber an ID, including after a deletion, merge or supersession.
- Source: `SRC-###` (three digits, extend to four if needed). Next ID = highest in working/SOURCES.md + 1.
- Topic: `T##`. Topic item: `T##.I##`. Slide: `S###`. Theme pattern: `P-<kebab-name>` (e.g. `P-chart-bar`). Check the existing files for the next free number; do not guess.
- Slide IDs identify slides across reorders. A slide that is removed gets status `removed`; its ID stays in the plan.

## Folders
| Folder | Role |
|---|---|
| inbox/ | The only place the user drops files. Anything still here is unprocessed. |
| working/references/originals/ | Byte-identical stored copies, named `SRC-###_<slug>.<ext>`. |
| working/references/analysis/SRC-###/ | Extraction and proposal notes for one source. |
| working/references/analysis/_pending/<hash12>/ | Working notes for a file not yet stored (hash12 = first 12 hex characters of its SHA-256). |
| working/assets/ | Logos, fonts and supporting visuals used directly in slides. |
| working/SOURCES.md | Root index of everything provided. |

## Names
- `<slug>` = original filename without extension, lower-case, spaces and punctuation replaced by `-`, at most 40 characters. Keep the original extension.

## Statuses
- Proposed content is `proposed`; only user-accepted content is `confirmed`. Extraction and analysis never confirm anything.
- Theme patterns, topics and plan entries each carry their own status and revision number; bump the revision when accepted content changes.
