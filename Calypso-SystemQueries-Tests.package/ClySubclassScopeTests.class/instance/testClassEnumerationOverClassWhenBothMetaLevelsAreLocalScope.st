tests
testClassEnumerationOverClassWhenBothMetaLevelsAreLocalScope

	| expected |
	scope := ClySubclassScope of: Class localScope: ClyBothMetaLevelClassScope.

	scope classesDo: [ :each | result add: each].
	
	expected := Class subclasses select: #isInstanceSide.
	expected := expected flatCollect: [:each | {each instanceSide. each classSide}].
	self assert: result asSet equals: expected asSet