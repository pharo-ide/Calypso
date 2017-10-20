execution
fetchResultAs: aQueryResult inScope: anEnvironmentScope
	| filteredClasses |
	filteredClasses := OrderedCollection new.
	
	anEnvironmentScope classesDo: [ :each | 
		(self selectsClass: each) ifTrue: [filteredClasses add: each]].
	
	aQueryResult buildOn: filteredClasses