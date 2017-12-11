accessing
elementAt: rowIndex
	| localIndex |
	localIndex := rowIndex.

	collapsedItems do: [:each | 
		each position = localIndex ifTrue: [ ^each ].
		(each isAfter: localIndex) ifTrue: [
			itemCursor moveTo: localIndex.
			^ ClyDataSourceItem of: self value: itemCursor currentItem ].
		localIndex := localIndex + each childrenCount.
	].

	itemCursor moveTo: localIndex.
	^ClyDataSourceItem of: self value: itemCursor currentItem