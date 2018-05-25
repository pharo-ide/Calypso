*Calypso-SystemPlugins-Traits-Queries-Tests
testConvertingToInheritingScopeShouldAddTraitUsers
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asInheritingScope.
	
	self assert: (convertedScope representsScope: ClyTraitUserScope)