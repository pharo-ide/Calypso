accessing
allContexts

	| result |
	result := OrderedCollection new.
	
	self allContextsDo: [:each | result add: each ].
	
	^result