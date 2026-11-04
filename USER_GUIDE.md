# User Guide — Reusable Presentation Workspace

This workspace helps you turn reference images and confirmed information into editable PowerPoint slides. Theme images guide appearance; information images supply content. The intended deliverable is a PPTX suitable for Google Slides import, with slide previews for review.

## 1. Create your presentation workspace

1. Unzip the template.
2. Keep one clean copy as your starter.
3. Copy the entire presentation-template folder and rename the copy for your presentation.
4. Open that copied folder in Claude Code. In a terminal, navigate to it and run `claude` if that is how you normally launch Claude Code.
5. Run `sh _template/init-working.sh` once to create the working/ folder (skip if working/ already exists).
6. Keep all project inputs and outputs inside that copy.

### Where things live

- **inbox/** is the only place you put files. The folder is part of the repository, but the files you drop in it are never committed.
- **working/** is where Claude keeps everything it produces and tracks for your project, and it is never committed:
  - working/output/current/ — your latest PPTX deck;
  - working/output/previews/ — slide preview images;
  - working/output/versions/ — earlier versions of the deck;
  - working/_theme/, working/_knowledge_folder/, working/presentation/ — agreed theme, topic knowledge, brief and slide plan (presentation/ is the one you may optionally edit);
  - working/_references/ — processed originals (SRC-###_name) and analysis notes;
  - working/_src/ — editable slide-generation source;
  - working/SOURCES.md — index of every file you provided.
- **_template/**, **_workflows/** and **.claude/** are the reusable starter and instructions. Do not edit them.

**Never touch folders starting with `_`.** They are not user-facing: do not add, edit, rename or delete anything in them. If something in them needs to change, tell Claude. Drop files only in inbox/.

Because working/ and inbox/ contents are git-ignored, back them up yourself if you need to keep them.

No API key or separate application is prescribed by this template. Use your existing Claude Code installation and authentication. This folder provides instructions and planning files, not a preinstalled slide-generation engine.

Start with this prompt:

> Read CLAUDE.md, README.md and USER_GUIDE.md. Use only this workspace and our conversation for this project. Inspect the current project state and help me prepare a presentation. Do not generate slides yet.

## 2. Add your inputs

Drop everything in **inbox/**: style references, content (images, PDF, Word, PowerPoint, spreadsheets), planning documents, logos and fonts. Claude works out each file's purpose with you during `/intake` (section 4), then stores it.

Give files descriptive names. Say what a file is for if you can ("table styles", "Q3 report"). If a file serves several purposes, such as a PPTX that supplies both style and content, Claude will ask about each one.

## 3. Establish the theme

Drop your style reference images in inbox/ and run `/intake` (section 4); say they are for the theme. Claude proposes global settings (palette, fonts, backgrounds, spacing) and a formatting pattern for each kind of visualization the images show (bar chart, table, process diagram and so on). Tell it which proposals you approve and what to change. Agreed settings are recorded in working/_theme/theme.json, working/_theme/patterns.json and working/_theme/theme-guide.md.

To revise the theme later, add new reference files and run `/intake` again, or run `/theme-update` with your request. Claude identifies the affected slides before anything is regenerated.

## 4. Process your files with /intake

> /intake

Claude lists what is in inbox/ and flags duplicates (same file content) and possible new versions. It then takes the files one at a time:

1. confirms what each file is for (theme, knowledge, plan, or asset);
2. reads it according to that purpose;
3. tells you what it learned and proposes numbered updates;
4. applies only what you accept, or discusses the rest with you;
5. asks whether the file serves another purpose;
6. moves it to working/_references/originals/ as SRC-###_name and records it in working/SOURCES.md.

Nothing proposed becomes confirmed until you accept it. You can also run it on specific files: `/intake inbox/q3-report.pdf`.

Review uncertain text, chart values and connector meanings. A screenshot may not provide enough data to recreate an accurate editable chart; supply the underlying values when available. Reading PDF, Word, PowerPoint and spreadsheet files may need local libraries; Claude reports what is missing and does not install anything without asking.

Files are processed when requested. Dropping a file does not trigger background processing. Files Claude cannot read stay in inbox/ with the reason.

## 5. Build the topic knowledge

> Follow _workflows/06-knowledge.md. Organise the extracted information into topics. Check working/_knowledge_folder/index.md before creating files. Record confirmed information, proposals, decisions, sources and open questions within each topic. Show me what requires confirmation.

The knowledge folder contains one index tracker and one Markdown file per actual topic. It does not use separate top-level files for decisions or open questions.

When approving content, be explicit:

> Confirm the wording we just agreed for this topic. Record it in the topic file and update the index. Keep the unresolved points as open questions.

You can also provide original information directly in conversation. Ask Claude to record confirmed information so a later session can retrieve it.

## 6. Plan the presentation through conversation

Explain your audience, desired outcome, speaking duration and key messages. You can fill working/presentation/brief.md yourself or ask Claude to maintain it. working/presentation/ is user-facing: you may optionally edit the brief, slide plan and review notes, and Claude will read your changes.

> Follow _workflows/03-plan.md. Help me develop the storyline and slide structure from the brief and relevant knowledge topics. Propose each slide's objective, main content and layout. Discuss the plan with me before generating slides.

Iterate naturally, for example:

> Combine these two slides, move the comparison earlier, and split the dense process slide into two. Update the plan and preserve stable slide IDs.

Use IDs shown in the actual plan. Stable IDs identify slides even after their positions change. Confirm the agreed revision when ready.

## 7. Generate a sample, then the deck

For the first build:

> Inspect the installed PowerPoint tooling and the local dependencies needed to generate editable PPTX and render previews. Explain missing dependencies and help me configure the required toolchain for my operating system. Save reproducible setup and build instructions in working/_src/.

Then:

> Follow _workflows/04-generate.md. Generate one representative slide from the agreed plan. Reconstruct its information as editable elements and apply the confirmed theme. Render, inspect and fix it, then provide the PPTX and preview for review.

After approving the sample:

> Generate the full deck from the approved plan using the reviewed design. Render and inspect every slide. Save the PPTX in working/output/current/, previews in working/output/previews/, and complete the handoff notes.

For a specific slide:

> Generate only slide <slide-ID> as a standalone PPTX and preview. Preserve the rest of the presentation.

Replace angle-bracket placeholders with actual values; do not type them literally.

## 8. Review and edit slides

Be specific about the slide and intended change:

> Follow _workflows/05-edit.md. On slide <slide-ID>, enlarge the diagram labels and simplify the background. Preserve the wording and all other slides. Update the source, rebuild and inspect the result.

If information changes:

> Update topic <topic-ID> with this confirmed correction. Identify affected slides, update their plan entries and regenerate the slides within the requested scope.

If you manually edit a PPTX in PowerPoint, supply that edited file and tell Claude before the next build. Otherwise, older generation source may overwrite your manual changes.

## 9. Check Google Slides compatibility

Open the final PPTX in PowerPoint when available. Import a copy into Google Slides and check fonts, line wrapping, connectors, chart appearance and whether the required elements remain editable.

> Review the import results I provide and correct any compatibility problems. Record which checks were actually performed in the handoff notes.

PPTX format does not guarantee identical rendering or editability after import. If direct Google Slides access is not available, perform the import yourself and share specific feedback. Do not treat an unperformed import test as passed.

## 10. Resume later or start another deck

To resume:

> Read CLAUDE.md, the brief, slide plan and knowledge index. Load only relevant topic files. Summarise the current state, unresolved questions and slides needing review, then continue with <requested task>.

For another presentation, copy the clean starter again. Do not reuse a populated workspace unless you deliberately want its content. Transfer selected themes or knowledge only when explicitly intended.

## Where to find results

| Item | Location |
|---|---|
| Theme settings | working/_theme/theme.json and working/_theme/theme-guide.md |
| Everything you provided, and where it is stored | working/SOURCES.md |
| Stored originals and extraction notes | working/_references/originals/ and working/_references/analysis/ |
| Visualization formatting rules | working/_theme/patterns.json |
| Topic knowledge | working/_knowledge_folder/index.md and topic files |
| Brief, slide plan and feedback | working/presentation/ |
| Editable generation source and build instructions | working/_src/ |
| Latest PPTX and handoff | working/output/current/ |
| Slide previews | working/output/previews/ |
| Prior deliverables | working/output/versions/ |

## Common issues

- **Claude repeats questions:** Ask it to read the saved project state and record your existing confirmation.
- **Content is misread:** Correct the source extraction and relevant topic before regenerating slides.
- **A slide is flattened into an image:** Ask for native text, shapes, tables or charts, and a clear explanation of any unavoidable image elements.
- **The layout is crowded:** Ask to split the content or simplify its structure while preserving meaning.
- **A new reference appears ignored:** Run `/intake`. Files still in inbox/ have not been processed.
- **A file was reported as a duplicate:** Its content matches an earlier source (see working/SOURCES.md). It is not reprocessed; Claude records the new name as an alias.
- **A generation tool is missing:** Complete the first-build environment check; the template itself installs no packages.

Keep theme choices, source evidence, confirmed knowledge and slide plans current as you work. These saved files allow the project to continue across sessions.
