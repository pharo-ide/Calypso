accessing
createTableCellButtonWith: anIcon using: aCommandActivator
	| button |
	button := super createTableCellButtonWith: anIcon using: aCommandActivator.
	sourceNode hasExecutionCounter ifTrue: [ 
		ClyDynamicBallonTooltip from: [self tableDescription] installInto: button].
	^button