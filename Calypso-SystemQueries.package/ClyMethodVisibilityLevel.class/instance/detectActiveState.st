controlling
detectActiveState

	extraClassScope classesDo: [:each | 
		(visibleClassScope isBasedOn: each) ifTrue: [ 
			^isActive := true ] ].
	
	isActive := false