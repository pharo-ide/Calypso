execution
buildResult: aQueryResult fromScope: anEnvironmentScope
	| filteredClasses |
	filteredClasses := OrderedCollection new.
	
	anEnvironmentScope classesDo: [ :each | 
		(self selectsClass: each) ifTrue: [filteredClasses add: each]].
	
	aQueryResult fillWith: filteredClasses