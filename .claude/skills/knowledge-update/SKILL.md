---
name: knowledge-update
description: "Maintain a topic-based knowledge folder for confirmed presentation information, sources, decisions and unresolved questions. Use when capturing user confirmations or updating topic content."
---

# Knowledge Update

## Project context

Locate the workspace root containing CLAUDE.md and working/presentation/slide-plan.json. Read CLAUDE.md before acting. Resolve all paths below from that root, not from the skill directory. Use only this project’s files and conversation unless the user explicitly authorises other context.

## Request

$ARGUMENTS

If arguments are empty, use the current user request and saved project state. Ask only for missing information needed to resolve material ambiguity.

## Procedure

Read _workflows/06-knowledge.md and follow it together with these instructions.

Read working/_knowledge_folder/index.md first and relevant topic files. Update an existing topic or copy _template/forms/topic.md for a distinct new topic. Assign stable topic/item IDs. Keep confirmation evidence and source references, proposals, decisions, questions and history inside the relevant topic. Maintain only the index plus topic files at the knowledge-folder top level. Update index/status/slide usage; mark affected slides stale. Record explicit approvals without asking again; extraction alone is not confirmation.

## Completion

Summarise the result, files changed, unresolved questions and next useful action. Do not claim unperformed checks. Do not perform other stages merely because they exist.
