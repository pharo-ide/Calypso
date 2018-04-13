tests
testForSharedClassVariable

	| classVar |
	classVar := ClyClassVariable named: #DayNames definedIn: ChronologyConstants.
	query := ClyVariableReferences of: classVar.
	self queryFromScope: ClyBothMetaLevelClassScope of: Date.
	
	self assert: resultItems notEmpty