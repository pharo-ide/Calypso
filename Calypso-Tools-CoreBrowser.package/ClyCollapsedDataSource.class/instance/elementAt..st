accessing
elementAt: rowIndex
	| localIndex |
	localIndex := rowIndex.	

	expandedItems do: [:each | 
		each position = localIndex ifTrue: [ ^each ].
		(each hasChildAt: localIndex) ifTrue: [
			^each childrenItemAt: localIndex].
		(each isAfter: localIndex) ifTrue: [
			environmentCursor moveTo: localIndex.
			^ ClyDataSourceItem of: self value: environmentCursor currentItem ].
		localIndex := localIndex - each childrenCount.
	].

	environmentCursor moveTo: localIndex.
	^ClyDataSourceItem of: self value: environmentCursor currentItem