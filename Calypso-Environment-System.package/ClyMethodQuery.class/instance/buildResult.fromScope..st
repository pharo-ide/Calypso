execution
buildResult: aQueryResult fromScope: anEnvironmentScope
	| filteredMethods |
	filteredMethods := OrderedCollection new.
	
	anEnvironmentScope methodsDo: [ :each | 
		(self selectsMethod: each) ifTrue: [filteredMethods add: each]].
	
	aQueryResult fillWith: filteredMethods