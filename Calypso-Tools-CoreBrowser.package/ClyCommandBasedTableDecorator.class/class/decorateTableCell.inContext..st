decoration
decorateTableCell: anItemCellMorph inContext: itemContext

	ClyTableIconCommandActivation 
		forExecutableCommandsInContext: itemContext 
		doWithActivator: [:commandActivator | 
			commandActivator decorateTableCell: anItemCellMorph ]