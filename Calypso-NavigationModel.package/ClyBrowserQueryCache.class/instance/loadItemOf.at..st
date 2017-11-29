controlling
loadItemOf: aBrowserQueryResult at: position
	(self includesItemAt: position) ifTrue: [ ^ self ].
	
	startPosition := position.
	self fillItemsFrom: aBrowserQueryResult