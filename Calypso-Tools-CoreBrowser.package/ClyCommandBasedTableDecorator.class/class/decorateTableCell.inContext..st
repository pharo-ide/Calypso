decoration
decorateTableCell: anItemCellMorph inContext: itemContext

	ClyTableIconCommandActivator allExecutableIn: itemContext do: [:readyActivator | 
		readyActivator decorateTableCell: anItemCellMorph ]