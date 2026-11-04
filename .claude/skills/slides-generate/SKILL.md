---
name: slides-generate
description: "Generate an editable PPTX deck or selected slides from the project plan and confirmed theme. Use for representative samples, standalone slides or full-deck builds."
---

# Slides Generate

## Project context

Locate the workspace root containing CLAUDE.md and working/presentation/slide-plan.json. Read CLAUDE.md before acting. Resolve all paths below from that root, not from the skill directory. Use only this project’s files and conversation unless the user explicitly authorises other context.

## Request

$ARGUMENTS

If arguments are empty, use the current user request and saved project state. Ask only for missing information needed to resolve material ambiguity.

## Procedure

Read _workflows/04-generate.md and follow it together with these instructions.

Resolve requested slide IDs or full-deck scope. Read relevant knowledge, references and theme. Inspect available PPTX tooling; use an installed PowerPoint skill if available and follow its instructions. Configure missing generation/rendering dependencies transparently and record reproducible build instructions in working/_src/. This skill does not bundle a rendering engine. Use native editable objects, shared theme components and per-slide source. Do not invent chart values. Render and inspect all affected slides, fix problems, archive prior outputs and complete _template/forms/handoff.md. For selected slides produce standalone PPTX/previews; update full deck only within scope. Report Google Slides import as untested unless actually checked.

## Completion

Summarise the result, files changed, unresolved questions and next useful action. Do not claim unperformed checks. Do not perform other stages merely because they exist.
