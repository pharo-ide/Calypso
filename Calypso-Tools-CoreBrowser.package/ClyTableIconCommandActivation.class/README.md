I activate command by using iconic button in table row.
I implement way how to decorate table view with icons like in Nautilus method pane.
These icons are buttons based on commands which are marked with my instances.

I delegate table cell decoration to command itself:
	decorateTableCell: anItemCellMorph 
		command decorateTableCell: anItemCellMorph using: self

By default command just builds single iconic button:
	command createTableCellButtonWith: icon using: aCommandActivator
where subclasses should define icon for table decoration:
	command buildTableCellIconFor: anItemCellMorph
And I set up it into cell morph: 
	command decorateTableCell: anItemCellMorph with: aMorph
By default I put it as cell definition morph:
	anItemCellMorph definitionMorph: aMorph
But subclasses can define it as extra tool:
	anItemCellMorph addExtraTool: aMorph
And generally subclasses can build different UI item instead of iconic button by overriding first method
