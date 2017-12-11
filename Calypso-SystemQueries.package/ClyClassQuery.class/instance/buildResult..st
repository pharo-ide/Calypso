execution
buildResult: aQueryResult
	| filteredClasses |
	filteredClasses := OrderedCollection new.
	
	scope classesDo: [ :each | 
		(self selectsClass: each) ifTrue: [filteredClasses add: each]].
	
	aQueryResult fillWith: filteredClasses