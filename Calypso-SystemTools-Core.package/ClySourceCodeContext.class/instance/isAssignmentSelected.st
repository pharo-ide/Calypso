testing
isAssignmentSelected
	| node |
	node := self selectedSourceNode.
	[node notNil] whileTrue: [ 
		node isAssignment ifTrue: [ ^true ].
		node := node parent].
	^false