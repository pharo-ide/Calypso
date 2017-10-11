decoration
decorateTableCell: anItemCellMorph inContext: itemContext

	ClyTableIconCommandActivation 
		activateAllInContext: itemContext 
		by: [:commandActivator | 
			commandActivator decorateTableCell: anItemCellMorph ]