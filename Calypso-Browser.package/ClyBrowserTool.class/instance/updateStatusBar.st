updating
updateStatusBar
	statusBar ifNotNil: [ statusBar delete ].
	self buildStatusBar