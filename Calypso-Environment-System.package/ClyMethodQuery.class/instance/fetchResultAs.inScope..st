execution
fetchResultAs: aQueryResult inScope: anEnvironmentScope
	| filteredMethods |
	filteredMethods := OrderedCollection new.
	
	anEnvironmentScope methodsDo: [ :each | 
		(self selectsMethod: each) ifTrue: [filteredMethods add: each]].
	
	aQueryResult buildOn: filteredMethods