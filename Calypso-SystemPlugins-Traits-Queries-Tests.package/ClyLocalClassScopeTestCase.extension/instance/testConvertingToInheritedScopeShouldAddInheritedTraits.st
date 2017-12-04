*Calypso-SystemPlugins-Traits-Queries-Tests
testConvertingToInheritedScopeShouldAddInheritedTraits
	| convertedScope |
	scope := self createSampleScope.
	
	convertedScope := scope asInheritedScope.
	
	self assert: (convertedScope representsScope: ClyInheritedTraitScope)