accessing
elementAt: rowIndex
	| localIndex |
	localIndex := rowIndex.	

	expandedItems do: [:each | 
		each position = localIndex ifTrue: [ ^each ].
		(each hasChildAt: localIndex) ifTrue: [
			^each childrenItemAt: localIndex].
		(each isAfter: localIndex) ifTrue: [
			itemCursor moveTo: localIndex.
			^ ClyDataSourceItem of: self value: itemCursor currentItem ].
		localIndex := localIndex - each childrenCount.
	].

	itemCursor moveTo: localIndex.
	^ClyDataSourceItem of: self value: itemCursor currentItem