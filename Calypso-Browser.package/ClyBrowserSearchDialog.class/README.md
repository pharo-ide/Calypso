I a a search dialog to select one or multiples items from the queries objects.
I am created by browser and users should call me using following methods: 

	browser searchDialog 
		requestSingleObject: 'Choose package' from: ClyAllPackages sorted.

	browser searchDialog 
		requestMultipleObjects: 'Choose classes' from: ClyAllClasses sorted

I always force semi async execution of given query.

In case when query result include just a couple of items I hide default view filters.

To select items in the list users can use #enter key. To close dialog they can use #esc. 

By default filter is focused. And as soon as dialog openes user can type filter.
If after filter there is only item in the list I will choose it when user submit the dialog.
If there are multiple items I try to find the item with exact same name as filter text.

Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyBrowser>
	itemsView:		<ClyQueryView>