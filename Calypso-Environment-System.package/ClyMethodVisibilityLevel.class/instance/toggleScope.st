controlling
toggleScope
	^self isActive
		ifTrue: [ self deactivateExtraScope ]
		ifFalse: [ self activateExtraScope ]