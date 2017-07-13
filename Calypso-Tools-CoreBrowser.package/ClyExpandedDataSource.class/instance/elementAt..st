accessing
elementAt: rowIndex
	| localIndex |
	localIndex := rowIndex.

	collapsedItems do: [:each | 
		each position = localIndex ifTrue: [ ^each ].
		(each isAfter: localIndex) ifTrue: [
			environmentCursor moveTo: localIndex.
			^ ClyDataSourceItem of: self value: environmentCursor currentItem ].
		localIndex := localIndex + each childrenCount.
	].

	environmentCursor moveTo: localIndex.
	^ClyDataSourceItem of: self value: environmentCursor currentItem