event handling
triggerClickCommands

	CmdClickActivation 
		activateAllInContext: self createSelectionContext 
		by: [:activator | ^activator executeCommand ]