decoration
decorateTableCell: anItemCellMorph withCommands: commands inContext: itemContext

	| panel activator button |
	panel := self createMultiIconMorph.
	commands do: [ :each | 
		activator := CmdCommandActivator new 
			command: each; 
			context: itemContext.
		button := each createTableCellButtonUsing: activator.
		button hResizing: #spaceFill.
		button vResizing: #spaceFill.
		panel addMorph: button].
	anItemCellMorph definitionMorph: panel
