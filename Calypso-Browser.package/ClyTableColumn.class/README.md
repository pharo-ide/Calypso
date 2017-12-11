I represent fast table column which responsible for cell creation: 
	column createCellFor: aDataSourceItem in: itemsView
I use block to set up column specific cell properties. Block expects two arguments: cell and item. 
It can modify cell morph in any possible way. But usually users wants only label for cell. I provide few methods to simplify such cases:
- column displayItemName. It will put string label into cell with given item name.
- displayItemPropertyBy: blockWithItem. It will use given block to retrieve string from item (or any morph) as cell label. 
 
Internal Representation and Key Implementation Points.

    Instance Variables
	displayBlock:		<BlockClosure>	two argument block