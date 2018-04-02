queries
actualItems

	| result |
	result := OrderedCollection new. 
	
	self actualItemsDo: [ :each :index | result add: each ].
	
	^result