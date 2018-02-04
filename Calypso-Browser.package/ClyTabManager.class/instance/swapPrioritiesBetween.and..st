private
swapPrioritiesBetween: aTool1 and: aTool2

	| priority1 priority2 |
"	aTool1 allowsDifferentActivationPriority ifFalse: [ ^self ].
	aTool2 allowsDifferentActivationPriority ifFalse: [ ^self ].
"	
	priority1 := self overridenPriorityOf: aTool1.
	priority2 := self overridenPriorityOf: aTool2.	
	selectionPriorities at: aTool1 class put: priority2.
	selectionPriorities at: aTool2 class put: priority1.