accessing
uniformActualObjects

	| lastItem |
	self isEmpty ifTrue: [ ^#() ].
	lastItem := self lastSelectedItem.
	
	^(items allSatisfy: [:each | each isSameKindAs: lastItem ]) 
		ifTrue: [ items collect: #actualObject]
		ifFalse: [{lastItem actualObject}]