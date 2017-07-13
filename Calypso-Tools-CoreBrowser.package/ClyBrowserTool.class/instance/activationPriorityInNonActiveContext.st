accessing
activationPriorityInNonActiveContext
	"when tool is shown in not active browser context it should be in less priority for activating tabs"
	^isManagedByUser 
		ifTrue: [ self activationPriority ] 
		ifFalse: [Float negativeInfinity ]