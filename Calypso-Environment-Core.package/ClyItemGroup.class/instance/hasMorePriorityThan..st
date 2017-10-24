testing
hasMorePriorityThan: anotherGroup

	self priority > anotherGroup priority ifTrue: [ ^true ].
	self priority < anotherGroup priority ifTrue: [ ^false ].
	
	^self name <= anotherGroup name