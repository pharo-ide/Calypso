instance creation
for: anItemsView on: aQueryResult
	^self new 
		itemsView: anItemsView;
		itemCursor: aQueryResult openBrowserCursor