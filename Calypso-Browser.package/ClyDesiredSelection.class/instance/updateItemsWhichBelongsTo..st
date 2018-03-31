controlling
updateItemsWhichBelongsTo: aDataSource
	"We override this method by two reasons:
	- desired selection should always keep all items even if some of them was removed from current data source
	- desired selection should never affect actual table selection ofter changes. That's why here we always return false which means that actual selection is not changed"
	| relatedItems updatedItems |
	relatedItems := items select: [ :each | each belongsToDataSource: aDataSource].
	updatedItems := aDataSource itemCursor itemsWith: (relatedItems collect: #actualObject).

	relatedItems with: updatedItems do: [ :myItem :updatedBrowserItem | 
		updatedBrowserItem ifNotNil: [ myItem updateItemWith: updatedBrowserItem ]].
	
	^false 