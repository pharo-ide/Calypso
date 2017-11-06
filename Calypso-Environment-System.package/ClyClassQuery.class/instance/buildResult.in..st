execution
buildResult: aQueryResult in: aNavigationEnvironment
	| filteredClasses |
	filteredClasses := OrderedCollection new.
	
	scope classesDo: [ :each | 
		(self selectsClass: each) ifTrue: [filteredClasses add: each]].
	
	aQueryResult fillWith: filteredClasses