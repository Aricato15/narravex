---
name: theme-update
description: "Analyse theme-reference images and update this presentation project’s palette, typography and layout settings. Use when establishing or revising the visual theme."
---

# Theme Update

## Project context

Locate the workspace root containing CLAUDE.md and working/presentation/slide-plan.json. Read CLAUDE.md before acting. Resolve all paths below from that root, not from the skill directory. Use only this project’s files and conversation unless the user explicitly authorises other context.

## Request

$ARGUMENTS

If arguments are empty, use the current user request and saved project state. Ask only for missing information needed to resolve material ambiguity.

## Procedure

Read workflows/01-theme.md and follow it together with these instructions.

Read working/theme/theme.json, working/theme/patterns.json and working/theme/theme-guide.md. Find theme sources in working/SOURCES.md (intent `theme`) and read their analysis notes; new theme files are handled by /intake, which calls this procedure for accepted changes. Separate visual cues from content. Propose global tokens and per-visualization patterns, record uncertainty and font substitutions, and apply agreed changes with a theme revision. Identify affected slides; do not regenerate them unless requested.

## Completion

Summarise the result, files changed, unresolved questions and next useful action. Do not claim unperformed checks. Do not perform other stages merely because they exist.
