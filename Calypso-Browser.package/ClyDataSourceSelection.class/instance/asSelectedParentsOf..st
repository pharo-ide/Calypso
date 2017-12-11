converting
asSelectedParentsOf: itemTypeClass

	| parents resultItems currentItems resultSet lastSelectedItem |
	self isEmpty ifTrue: [ ^self ].
	currentItems := items select: [ :each | each isBasedOnItemType: itemTypeClass].
	currentItems = items ifTrue: [ ^self ].
	parents := items 
		reject: [:each | each isBasedOnItemType: itemTypeClass ] 
		thenCollect: [ :each |each findParentItemOf: itemTypeClass ].
	resultSet := parents asSet.
	resultSet remove: nil ifAbsent: [].
	resultSet addAll: currentItems.
	
	
	"We want to save root of lastSelectedItem as lastSelectedItem of new selection. 
	This item should be first according to FastTable logic".
	resultItems := resultSet asOrderedCollection.
	lastSelectedItem := self lastSelectedItem.
	(resultSet includes: lastSelectedItem) ifTrue: [ 
		resultItems remove: lastSelectedItem.
		resultItems addFirst: lastSelectedItem].	
	
	^self class fromRoot: self rootDataSource items: resultItems