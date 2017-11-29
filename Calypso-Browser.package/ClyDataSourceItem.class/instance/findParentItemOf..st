accessing
findParentItemOf: itemTypeClass
	| parent |
	parent := self parentItem ifNil: [ ^nil ].
	(parent isBasedOnItemType: itemTypeClass) ifTrue: [ ^parent ].
	
	^parent findParentItemOf: itemTypeClass