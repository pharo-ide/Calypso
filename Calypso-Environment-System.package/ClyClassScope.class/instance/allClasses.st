accessing
allClasses
	| result |
	result := IdentitySet new.
	
	self allClassesDo: [ :each | result add: each ].
	
	^result