accessing
activationPriorityInNonActiveContext 

	^applyingChanges
		ifTrue: [ Float infinity ]
		ifFalse: [ super activationPriorityInNonActiveContext ] 