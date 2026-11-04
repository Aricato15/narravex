---
name: presentation-plan
description: "Discuss, review and revise a presentation storyline and slide structure with the user. Use for outlines, reordering, content allocation and plan approval."
---

# Presentation Plan

## Project context

Locate the workspace root containing CLAUDE.md and working/presentation/slide-plan.json. Read CLAUDE.md before acting. Resolve all paths below from that root, not from the skill directory. Use only this project’s files and conversation unless the user explicitly authorises other context.

## Request

$ARGUMENTS

If arguments are empty, use the current user request and saved project state. Ask only for missing information needed to resolve material ambiguity.

## Procedure

Read _workflows/03-plan.md and follow it together with these instructions.

Read working/presentation/brief.md, slide-plan.json, review-notes.md and relevant topic files via the knowledge index. Develop the plan conversationally. Use _template/forms/slide-entry.json for entries; preserve stable slide IDs when reordered. Track revisions, objectives, sources and review state. Record explicit approval already given. Do not generate the deck unless requested.

## Completion

Summarise the result, files changed, unresolved questions and next useful action. Do not claim unperformed checks. Do not perform other stages merely because they exist.
