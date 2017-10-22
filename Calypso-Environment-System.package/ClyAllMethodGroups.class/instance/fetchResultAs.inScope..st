execution
fetchResultAs: aQueryResult inScope: anEnvironmentScope 

	| groups |
	groups := OrderedCollection new.
	
	anEnvironmentScope methodGroupsDo: [ :each | groups add: each].
	
	aQueryResult buildOn: groups