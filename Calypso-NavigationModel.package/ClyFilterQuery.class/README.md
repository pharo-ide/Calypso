I represent query which filters results of another query.
My instances can be created by:

	ClyFilterQuery for: anQuery filter: anItemFilter

Or you can simply convert any query using filter: 

	aQuery filteredBy: anItemFilter

During execution I evaluate #actualQuery and filter received items with my #itemFilter.
Look at method #buildResult: for details.

itemFilter is a kind of ClyItemFilter. For example there is ClyItemNameFilter which matches items by name using specified pattern. Look ClyItemFilter comments for details. 

Internal Representation and Key Implementation Points.

    Instance Variables
	itemFilter:		<ClyItemFilter>