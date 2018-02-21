I am table data source which items are all initially expanded.
I maintain list of collapsed items and compute items position according to it (row indexes in full table).

Internal Representation and Key Implementation Points.

    Instance Variables
	collapsedItems:		<SortedCollection of: ClyDataSourceItem>	sorted by item position