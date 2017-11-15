execution
isEmptyIn: aNavigationEnvironment

	scope classesDo: [ :each | 
		(self selectsClass: each) ifTrue: [^false]].
	
	^true