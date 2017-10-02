I describe how to access and execute commands using iconic button in table row.
I implement way how to decorate table view with icons like in Nautilus method pane.
These icons are buttons based on commands which are marked with my instances.

My activator delegates table cell decoration to command itself:
	decorateTableCell: anItemCellMorph 
		command decorateTableCell: anItemCellMorph using: self

By default command just builds single iconic button:
	command createTableCellButtonWith: icon using: aCommandActivator
where subclasses should define icon for table decoration:
	command buildTableCellIconFor: anItemCellMorph
Then icon is added into the cell morph: 
	command decorateTableCell: anItemCellMorph with: aMorph
By default the icon is added as cell definition morph:
	anItemCellMorph definitionMorph: aMorph
But command subclasses can define it as extra tool:
	anItemCellMorph addExtraTool: aMorph

Command subclasses can redefine default decoration logic and build completally different UI items instead of iconic button. They should override first method