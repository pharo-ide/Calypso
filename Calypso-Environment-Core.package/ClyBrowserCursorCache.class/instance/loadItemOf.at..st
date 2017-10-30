controlling
loadItemOf: anEnvironmentContent at: position
	(self includesItemAt: position) ifTrue: [ ^ self ].
	
	startPosition := position.
	self fillItemsFrom: anEnvironmentContent