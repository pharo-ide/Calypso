source code shortcuts
buildSourceCodeShortcutsOn: aBuilder
	"it is now start managed by commands with ClySourceCodeContext"
	<keymap>
	"(aBuilder shortcut: #rename)
		category: ClyTextEditor name
		default: $k meta
		do: [ :target | target browserTool renameSelection ]
		description: 'Rename the current selection'"