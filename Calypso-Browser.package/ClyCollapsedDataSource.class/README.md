I am table data source which items are all initially collapsed.
I maintain list of expanded items and compute items position according to it (row indexes in full table).
 
Internal Representation and Key Implementation Points.

    Instance Variables
	expandedItems:		<SortedCollection of: ClyDataSourceItem>	sorted by item position