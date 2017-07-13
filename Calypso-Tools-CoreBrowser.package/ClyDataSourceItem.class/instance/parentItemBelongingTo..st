accessing
parentItemBelongingTo: scopeClass
	| parent |
	parent := self parentItem ifNil: [ ^nil ].
	parent environmentScope == scopeClass ifTrue: [ ^parent ].
	
	^parent parentItemBelongingTo: scopeClass