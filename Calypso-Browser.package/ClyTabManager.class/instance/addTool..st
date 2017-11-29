private
addTool: aBrowserTool

	| tab |
	tools add: aBrowserTool.
	"tab build is performed in background when owner is not exist yet. But we need proper width to perform kind of styling/formatting for tool if needed"
	aBrowserTool width: tabMorph width.
	tab := aBrowserTool createTab.
	tab when: #tabDeleted send: #tabDeleted: to: self.
	tab when: #tabSelected send: #tabSelected: to: self.
	tabMorph addTab: tab