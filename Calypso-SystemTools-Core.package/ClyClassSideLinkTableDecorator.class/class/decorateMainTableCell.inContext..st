decoration
decorateMainTableCell: anItemCellMorph inContext: itemContext
	| command activator icon button |
	super decorateMainTableCell: anItemCellMorph inContext: itemContext.
	
	command := ClySwitchToClassSideCommand new.
	itemContext prepareNewCommand: command.
	activator := CmdCommandActivator new 
			command: command; 
			context: itemContext.
	icon := anItemCellMorph iconNamed: #forward.
	button := command createTableCellButtonWith: icon using: activator.
	button setBalloonText: 'Switch to the class side'.
	anItemCellMorph definitionMorph: button