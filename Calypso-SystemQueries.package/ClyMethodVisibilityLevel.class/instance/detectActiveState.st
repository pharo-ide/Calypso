controlling
detectActiveState

	extraClassScope classesDo: [:each | 
		(visibleClassScope includesClass: each) ifTrue: [ 
			^isActive := true ] ].
	
	isActive := false