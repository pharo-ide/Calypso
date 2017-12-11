*Calypso-SystemQueries
collectAllClasses
	| result |
	result := IdentitySet new.
	
	subscopes do: [ :scope | scope classesDo: [:each | result add: each ]].
	
	^result