decoration
decorateTableCell: anItemCellMorph inContext: itemContext

	ClyTableIconCommandActivation allExecutableIn: itemContext do: [:readyActivator | 
		readyActivator decorateTableCell: anItemCellMorph ]