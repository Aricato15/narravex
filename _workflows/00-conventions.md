# Conventions

Shared rules for IDs, names and statuses. Other workflows refer here instead of repeating them.

## IDs
- Never reuse or renumber an ID, including after a deletion, merge or supersession.
- Source: `SRC-###` (three digits, extend to four if needed). Next ID = highest in working/SOURCES.md + 1.
- Topic: `T##`. Topic item: `T##.I##`. Slide: `S###`. Theme pattern: `P-<kebab-name>` (e.g. `P-chart-bar`). Check the existing files for the next free number; do not guess.
- Slide IDs identify slides across reorders. A slide that is removed gets status `removed`; its ID stays in the plan.

## Folders
Two classes of folder, told apart by the name:
- `_` prefix = not user-facing. Users must never touch these (no adding, editing, renaming or deleting; they ask Claude to make changes instead): `_workflows/`, `_template/`, and inside working/: `_references/`, `_knowledge_folder/`, `_theme/`, `_src/`, `_assets/`.
- No prefix = user-facing, whether the user must use it or may optionally edit it: `inbox/` (user drops files), `working/output/` (user collects slides and previews), `working/presentation/` (brief, slide plan and review notes; the user may optionally edit them and Claude reads their changes).
New Claude-managed folders must use the `_` prefix; a folder users may open or edit must not. `.claude/` keeps its name because Claude Code requires it. The prefix is not applied to files (e.g. working/SOURCES.md) or to nested working notes like `_pending/` inside an already-prefixed folder.

| Folder | Role |
|---|---|
| inbox/ | The only place the user drops files. Anything still here is unprocessed. |
| working/_references/originals/ | Byte-identical stored copies, named `SRC-###_<slug>.<ext>`. |
| working/_references/analysis/SRC-###/ | Extraction and proposal notes for one source. |
| working/_references/analysis/_pending/<hash12>/ | Working notes for a file not yet stored (hash12 = first 12 hex characters of its SHA-256). |
| working/_assets/ | Logos, fonts and supporting visuals used directly in slides. |
| working/SOURCES.md | Root index of everything provided. |

## Names
- `<slug>` = original filename without extension, lower-case, spaces and punctuation replaced by `-`, at most 40 characters. Keep the original extension.

## Statuses
- Proposed content is `proposed`; only user-accepted content is `confirmed`. Extraction and analysis never confirm anything.
- Theme patterns, topics and plan entries each carry their own status and revision number; bump the revision when accepted content changes.
