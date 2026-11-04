---
name: slides-edit
description: "Edit selected slides or elements while preserving unrelated presentation content and design. Use for layout fixes, wording changes, diagram changes and targeted regeneration."
---

# Slides Edit

## Project context

Locate the workspace root containing CLAUDE.md and working/presentation/slide-plan.json. Read CLAUDE.md before acting. Resolve all paths below from that root, not from the skill directory. Use only this project’s files and conversation unless the user explicitly authorises other context.

## Request

$ARGUMENTS

If arguments are empty, use the current user request and saved project state. Ask only for missing information needed to resolve material ambiguity.

## Procedure

Read _workflows/05-edit.md and follow it together with these instructions.

Resolve target slide IDs and requested change. Read source, plan and dependencies. Reconcile user-supplied manually edited PPTX before rebuilding older source. Preserve unrelated slides. Edit reproducible source, update revisions/status, archive previous outputs, rebuild, render and inspect affected slides. Update topic knowledge only when meaning or decisions change. Mark dependent slides stale and report validation honestly.

## Completion

Summarise the result, files changed, unresolved questions and next useful action. Do not claim unperformed checks. Do not perform other stages merely because they exist.
