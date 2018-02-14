selection
selectedItemsOfType: anItemTypeClass
	| targetView |
	(activeQueryView showsItemsOfType: anItemTypeClass) ifTrue: [ 
		^selectedItems select: [ :each | each isBasedOnItemType: anItemTypeClass ] ].
	
	targetView := self browser navigationViews 
		detect: [:each | each ~~ activeQueryView and: [each showsItemsOfType: anItemTypeClass]] 
		ifNone: [ ^#() ].
	^targetView selection items select: [ :each | each isBasedOnItemType: anItemTypeClass ]