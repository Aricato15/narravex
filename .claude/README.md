# Claude Code Project Skills

Copy this .claude folder into the presentation workspace beside CLAUDE.md. Merge with an existing .claude folder; do not overwrite your settings. These skills depend on the template’s workflows, templates and project-state files and are not standalone global skills.

Open Claude Code at the workspace root. Invoke:

| Command | Purpose |
|---|---|
| /theme-update | Establish or revise the theme |
| /intake | Process files in working/inbox/: identify intent (theme, knowledge, plan, asset), propose updates, store and index |
| /presentation-plan | Discuss and update the slide plan |
| /slides-generate | Generate samples, selected slides or the deck |
| /slides-edit | Edit selected slides |
| /knowledge-update | Capture or revise topic knowledge |

Add your request after a command, for example `/slides-edit S004: enlarge the labels and preserve wording`. Use actual IDs from your plan. Skills can also be selected by Claude when their descriptions match your request.

These are project workflow skills, not a PowerPoint rendering engine. Use the first-build environment check described in USER_GUIDE.md to configure generation dependencies. No API keys, provider overrides, permission bypasses, hooks, MCP servers or background watchers are included. No custom subagents are required for this workflow.

If a command is missing, check that its file is at `.claude/skills/<name>/SKILL.md` in the workspace you opened. Check `/help` and start a new Claude Code session if needed to reload project skills.
