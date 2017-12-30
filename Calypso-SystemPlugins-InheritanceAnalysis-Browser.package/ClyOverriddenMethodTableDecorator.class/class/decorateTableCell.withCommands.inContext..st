decoration
decorateTableCell: anItemCellMorph withCommands: commands inContext: itemContext

	| panel activator icon button |
	panel := self createMultiIconMorph.
	commands do: [ :each | 
		activator := CmdCommandActivator new 
			command: each; 
			context: itemContext.
		icon := each buildTableCellIconFor: anItemCellMorph.
		button := each createTableCellButtonWith: icon using: activator.
		panel addMorph: button].
	anItemCellMorph definitionMorph: panel
