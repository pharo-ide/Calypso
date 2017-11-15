execution
isEmptyIn: aNavigationEnvironment

	scope methodsDo: [ :each | 
		(self selectsMethod: each) ifTrue: [^false]].
	
	^true