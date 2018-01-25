decoration
decorateTableCell: anItemCellMorph withCommands: commands inContext: itemContext

	| panel activator button |
	panel := self createMultiIconMorph.
	commands do: [ :each | 
		activator := CmdCommandActivator new 
			command: each; 
			context: itemContext.
		button := each createTableCellButtonUsing: activator.
		panel addMorph: button].
	anItemCellMorph definitionMorph: panel
