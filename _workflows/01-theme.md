# Analyse or update theme

Theme reference files arrive through inbox/ and are analysed in the intake workflow (_workflows/02-intake.md, intent `theme`, see _workflows/intake/intent-theme.md). Their stored copies and analysis are listed in working/SOURCES.md (intent `theme`). This workflow is also used directly to revise the theme without new files.

Read theme.json, patterns.json, theme-guide.md and the analysis notes of the theme sources. Propose:
- global tokens: palette and semantic colours, typography/fallbacks, backgrounds, spacing, shapes;
- patterns: formatting rules per visualization or layout type (_template/forms/pattern-entry.json), including when each suits.

Distinguish observed style from proposed defaults. Discuss material choices with the user, then update theme.json, patterns.json and theme-guide.md with revision and status. A pattern is `proposed` until the user accepts it. Record which Source IDs each setting came from. Identify affected slides after changes (slides list `pattern_ids` and `theme_revision`); do not silently restyle an existing deck. If a slide needs a visualization with no pattern, say so and propose one instead of improvising.
