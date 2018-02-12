controlling
detectActiveState

	extraClassScope classesDo: [:each | 
		(visibleClassScope includesClass: each) ifFalse: [ 
			^isActive := false ] ].
	
	isActive := true