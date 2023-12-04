```json
// Place your key bindings in this file to override the defaultsauto[]
[
    {
        "key": "cmd+l alt+v",
        "command": "latex-workshop.view",
        "when": "!config.latex-workshop.bind.altKeymap.enabled && !virtualWorkspace && editorLangId =~ /^latex$|^latex-expl3$|^doctex$|^rsweave$|^jlweave$|^pweave$/"
    },
    {
        "key": "alt+cmd+v",
        "command": "-latex-workshop.view",
        "when": "!config.latex-workshop.bind.altKeymap.enabled && !virtualWorkspace && editorLangId =~ /^latex$|^latex-expl3$|^doctex$|^rsweave$|^jlweave$|^pweave$/"
    },
    {
        "key": "shift+alt+z",
        "command": "zotero-cite.addCitation"
    },
    {
        "key": "cmd+l shift+alt+z",
        "command": "zotero-cite.exportBibLatex"
    },
    {
        "key": "up",
        "command": "cursorUp",
        "when": "editorTextFocus && vim.active && !inDebugRepl && !suggestWidgetMultipleSuggestions && !suggestWidgetVisible"
    },
    {
        "key": "down",
        "command": "cursorDown",
        "when": "editorTextFocus && vim.active && !inDebugRepl && !suggestWidgetMultipleSuggestions && !suggestWidgetVisible"
    },
]
```

The last two lines are crucial