accessing
itemScope
	^self isEmpty
		ifTrue: [ rootDataSource itemScope ]
		ifFalse: [ self lastSelectedItem environmentScope ]