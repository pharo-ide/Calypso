queries
query: anEnvironmentQueryOfContentClass inScope: anEnvironmentScope
	| existingScope |
	existingScope := self selectScope: anEnvironmentScope class of: anEnvironmentScope basisObjects.
	^existingScope query: anEnvironmentQueryOfContentClass