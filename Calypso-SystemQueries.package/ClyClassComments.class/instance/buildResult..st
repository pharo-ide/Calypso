execution
buildResult: aQueryResult
	| classComments |
	classComments := OrderedCollection new.
	
	scope classesDo: [ :each | 
		(self selectsClass: each) ifTrue: [
			classComments add: (ClyClassComment of: each)]].
	
	aQueryResult fillWith: classComments