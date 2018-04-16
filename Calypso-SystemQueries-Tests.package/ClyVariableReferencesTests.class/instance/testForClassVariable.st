tests
testForClassVariable

	| classVar |
	classVar := ClyClassVariable named: #ClassVar1 definedIn: ClyClass2FromP1.
	query := ClyVariableReferences of: classVar.
	self queryFromScope: ClyClassScope of: ClyClass2FromP1.
	
	self assert: resultItems size equals: 2.	
	self assert: foundSelectors equals: #(instanceSideClassVar1Reader instanceSideClassVar1Writer)