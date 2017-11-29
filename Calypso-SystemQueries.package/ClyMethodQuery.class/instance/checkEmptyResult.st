execution
checkEmptyResult

	scope methodsDo: [ :each | 
		(self selectsMethod: each) ifTrue: [^false]].
	
	^true