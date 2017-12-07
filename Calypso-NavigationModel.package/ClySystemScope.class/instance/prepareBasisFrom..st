initialization
prepareBasisFrom: aCollection
	aCollection size = 1 ifFalse: [ 
		self error: 'System scope should be created on single basis' ].

	^aCollection