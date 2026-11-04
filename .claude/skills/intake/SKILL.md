---
name: intake
description: "Process files the user has dropped in inbox/: identify each file's intent (theme, knowledge, plan or asset), analyse it, propose updates for the user to accept or review, then store and index the file. Use when the user adds files or asks to ingest, process or review new references."
---

# Intake

## Project context

Locate the workspace root containing CLAUDE.md and working/presentation/slide-plan.json. Read CLAUDE.md before acting. Resolve all paths below from that root, not from the skill directory. Use only this project’s files and conversation unless the user explicitly authorises other context.

## Request

$ARGUMENTS

If arguments are empty, process everything currently in inbox/. If arguments name files, process only those. Ask only for missing information needed to resolve material ambiguity.

## Procedure

Read _workflows/00-conventions.md and _workflows/02-intake.md and follow them together with these instructions.

Read working/SOURCES.md first, then scan inbox/ and compare SHA-256 hashes. Report duplicates and possible new versions before analysing anything. Work on one file at a time: confirm intent with the user when it is not explicit, read the matching file in _workflows/intake/formats/ and _workflows/intake/intent-<intent>.md, write the extraction and a proposal under working/_references/analysis/_pending/, and present what you learned with numbered proposed changes. Apply only changes the user accepts, using the theme, knowledge and plan workflows. Ask whether the file has further intents. When finished, move the file from inbox/ to working/_references/originals/ as SRC-###_<slug>.<ext> after verifying its hash, rename the analysis folder, and update working/SOURCES.md.

Do not write to theme, knowledge, plan or brief files before the user accepts. Do not delete inbox files without being asked. Do not install packages automatically. Never invent unreadable text or chart values.

## Completion

Summarise per file: Source ID, intents, what was applied, what was deferred, open questions and any slides marked stale. Do not claim unperformed checks. Do not perform other stages (generation, editing) merely because they exist.
