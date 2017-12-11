execution
buildResult: aQueryResult
	
	| processes |
	processes := OrderedCollection new.
	scope processesDo: [ :each | 
		each isTerminated ifFalse: [ processes add: each ]].
	
	aQueryResult fillWith: processes