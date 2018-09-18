building
buildStatusBar

	statusBar := ClyStatusBarMorph new.
	statusBar 
		width: browser width. "it is required because tool is build in background"
"		color: self theme windowColor."
	self addMorphBack: statusBar.
	
	self fillStatusBar