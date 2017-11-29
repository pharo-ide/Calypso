execution
checkEmptyResult

	scope classesDo: [ :each | 
		(self selectsClass: each) ifTrue: [^false]].
	
	^true