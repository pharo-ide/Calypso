event handling
triggerDoubleClickCommands

	CmdDoubleClickActivation 
		activateAllInContext: self createSelectionContext 
		by: [:activator | ^activator executeCommand ]