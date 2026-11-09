# Narravex

Narravex turns your source material into editable PowerPoint slides with Claude Code. Drop in theme references, content documents, plans and assets. Claude sorts out what each file is for, builds a confirmed knowledge base and slide plan with you, then generates native, editable PPTX slides styled to your theme. The decks are suitable for Google Slides import and come with preview images.

Copy this entire folder for each new presentation. Keep this starter free of project content.

For step-by-step instructions and copyable prompts, see [USER_GUIDE.md](USER_GUIDE.md).

## About the name
- **Narra** stands for narrative, storytelling and presentation structure.
- **Vex** is an invented ending that suggests complex connections and intelligence.
- **Scalable:** the name fits knowledge management, research and reporting as well as slide generation.
- **Developer-friendly:** related components can follow one naming pattern: `narravex`, `narravex-agent`, `narravex-core` and `narravex-slides`.

## Repository layout
- inbox/ (folder tracked, contents ignored): drop your input files here. Files you add are never committed.
- working/ (git-ignored by default; see [Tracking your own work](#tracking-your-own-work)): all your intermediate files and slides live here. That covers references, knowledge, theme, plan, src and output; output/current/ holds the PPTX and output/previews/ the slide images. Create it once with `sh _template/init-working.sh`, which copies _template/starter/ without overwriting existing files.
- _template/ (tracked): starter/ holds the blank project state; forms/ holds blank forms to copy. Nothing project-specific belongs here.
- _workflows/, .claude/, CLAUDE.md, README.md, USER_GUIDE.md (tracked): operating instructions.

**Naming convention:** folders starting with `_` are not user-facing: never add, edit, rename or delete anything in them; ask Claude instead. Unprefixed folders are user-facing: inbox/ (drop files), working/output/ (collect slides and previews) and working/presentation/ (brief and slide plan, optional to edit). Inside working/, the prefixed folders are _references/, _knowledge_folder/, _theme/, _src/ and _assets/.

## Start
1. Open your copy of the Narravex folder in Claude Code.
2. Drop every input file in inbox/: style references, content documents (images, PDF, Word, PowerPoint, spreadsheets), planning documents, logos and fonts.
3. Run `/intake`. Claude goes through each file, asks or confirms its purpose (theme, knowledge, plan, asset), proposes updates, and applies the ones you accept. It then stores the file as SRC-###_name in working/_references/originals/ and records it in working/SOURCES.md.
4. Describe the audience and objective in working/presentation/brief.md, or discuss them with Claude (/presentation-plan).
5. Review a representative slide before generating the full deck (/slides-generate).

Suggested opening prompt:
> Read CLAUDE.md and README.md. Inspect this project's inputs. Run /intake on what is in inbox/, then help me discuss a slide plan. Use only this workspace and this project's conversation. Do not generate a full deck yet.

## Tracking your own work
By default, git ignores everything in working/ and anything you drop in inbox/. When you clone or pull Narravex, you get the framework only, and your slides are never committed by accident. That keeps the shared repository free of project content.

To commit your own slides in your copy, open `.gitignore` and uncomment one line in the "Opt in" block:

| Option | Line to uncomment | What gets committed |
|---|---|---|
| A: slides only | `!/working/output/` | working/output/: the current PPTX, previews and earlier versions |
| B: whole project | `!/working/*` | All of working/: slides plus the brief, slide plan, theme, knowledge, stored source files and generation source, so the deck can be rebuilt |

Then run `git add working` and commit as usual. Before you push, keep in mind:
- Option B commits your stored source files (working/_references/originals/). Only push to a remote you trust with that material.
- PPTX files, previews and stored originals are binary and can be large. Consider Git LFS if the repository grows.
- inbox/ stays ignored with either option. Files there are unprocessed, and /intake moves them into working/.
- Do not commit an uncommented opt-in back to the shared Narravex repository.

If you track nothing, back up working/ yourself.

## Workflows and skills
The Markdown files in _workflows/ are the procedures; the skills in .claude/skills/ invoke them (see .claude/README.md). The inbox is processed on request, not watched in the background. Shared ID, folder and naming rules are in _workflows/00-conventions.md.

| Command | Purpose |
|---|---|
| /intake | Process files in inbox/ and store them |
| /theme-update | Establish or revise the theme |
| /knowledge-update | Capture or revise topic knowledge |
| /presentation-plan | Discuss and update the slide plan |
| /slides-generate | Generate samples, selected slides or the deck |
| /slides-edit | Edit selected slides |

## Setup boundary
Narravex is a planning and operating framework, not a preconfigured slide renderer. On first generation, ask Claude to inspect its installed PowerPoint capability and local dependencies, then set up a reproducible generation and rendering toolchain. Keep dependency manifests and build instructions in working/_src/.

## Folder map
- inbox/ (repo root): the single drop folder for all incoming files. Anything still here is unprocessed.
- working/SOURCES.md: root index of every file you provided and where it is stored.
- working/_theme/: agreed theme settings (theme.json tokens, patterns.json per-visualization rules, theme-guide.md).
- working/_references/: originals/ (stored source files as SRC-###_name) and analysis/ (extraction and proposal notes per source).
- working/_knowledge_folder/: index and one Markdown file per topic.
- working/presentation/: brief, slide plan and review notes.
- _template/forms/: blank forms to copy into active project folders.
- _workflows/: reusable operating procedures.
- working/_assets/: logos, fonts and supporting visuals.
- working/_src/: editable generation source and build instructions.
- working/output/: current deliverables, previews and older versions.

Topic files are created only when real topics exist. Blank examples live in _template/forms/, not the knowledge folder. No sample subject matter or prior-chat content is included.
