# Reusable Presentation Template

Copy this entire folder for each new presentation. Keep this starter free of project content.

For step-by-step instructions and copyable prompts, see [USER_GUIDE.md](USER_GUIDE.md).

## Repository layout
- inbox/ (folder tracked, contents ignored): drop your input files here. Files you add are never committed.
- working/ (git-ignored): all your intermediate files and slides live here: references, knowledge, theme, plan, src, and output (output/current/ holds the PPTX, output/previews/ the slide images). Create it once with `sh template/init-working.sh`, which copies template/starter/ without overwriting existing files.
- template/ (tracked): starter/ holds the blank project state; forms/ holds blank forms to copy. Nothing project-specific belongs here.
- workflows/, .claude/, CLAUDE.md, README.md, USER_GUIDE.md (tracked): operating instructions. Folder names below other than inbox/ (theme/, output/ ...) live inside working/.

## Start
1. Open the copied folder in Claude Code.
2. Drop every input file in inbox/: style references, content documents (images, PDF, Word, PowerPoint, spreadsheets), planning documents, logos and fonts.
3. Run `/intake`. Claude goes through each file, asks or confirms its purpose (theme, knowledge, plan, asset), proposes updates, and applies the ones you accept. It then stores the file as SRC-###_name in working/references/originals/ and records it in working/SOURCES.md.
4. Describe the audience and objective in working/presentation/brief.md, or discuss them with Claude (/presentation-plan).
5. Review a representative slide before generating the full deck (/slides-generate).

Suggested opening prompt:
> Read CLAUDE.md and README.md. Inspect this project's inputs. Run /intake on what is in inbox/, then help me discuss a slide plan. Use only this workspace and this project's conversation. Do not generate a full deck yet.

## Workflows and skills
The Markdown files in workflows/ are the procedures; the skills in .claude/skills/ invoke them (see .claude/README.md). The inbox is processed on request, not watched in the background. Shared ID, folder and naming rules are in workflows/00-conventions.md.

## Setup boundary
This is a planning and operating template, not a preconfigured slide renderer. On first generation, ask Claude to inspect its installed PowerPoint capability and local dependencies, then set up a reproducible generation and rendering toolchain. Keep dependency manifests and build instructions in working/src/.

## Folder map
- inbox/ (repo root): the single drop folder for all incoming files. Anything still here is unprocessed.
- working/SOURCES.md: root index of every file you provided and where it is stored.
- working/theme/: agreed theme settings (theme.json tokens, patterns.json per-visualization rules, theme-guide.md).
- working/references/: originals/ (stored source files as SRC-###_name) and analysis/ (extraction and proposal notes per source).
- working/knowledge_folder/: index and one Markdown file per topic.
- working/presentation/: brief, slide plan and review notes.
- template/forms/: blank forms to copy into active project folders.
- workflows/: reusable operating procedures.
- working/assets/: logos, fonts and supporting visuals.
- working/src/: editable generation source and build instructions.
- working/output/: current deliverables, previews and older versions.

Topic files are created only when real topics exist. Blank examples live in template/forms/, not the knowledge folder. No sample subject matter or prior-chat content is included.
