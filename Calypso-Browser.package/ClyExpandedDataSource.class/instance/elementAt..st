accessing
elementAt: rowIndex
	| localIndex |
	localIndex := rowIndex.

	collapsedItems do: [:each | 
		each position = localIndex ifTrue: [ ^each ].
		(each isAfter: localIndex) ifTrue: [
			self itemCursor moveTo: localIndex.
			^ ClyDataSourceItem of: self value: self itemCursor currentItem ].
		localIndex := localIndex + each childrenCount.
	].

	self itemCursor moveTo: localIndex.
	^ClyDataSourceItem of: self value: self itemCursor currentItem