building
buildMethodGroupWithCritique: aCritique on: resultDictionary
	| critiqueGroupName group methodQuery |
	
	critiqueGroupName := aCritique rule group.
	group := resultDictionary at: critiqueGroupName ifAbsentPut: [ 
		methodQuery := ClyConcreteProblemMethods 
			critiqueGroup: critiqueGroupName from: self scope.
		ClyConcreteCritiqueMethodGroup on: methodQuery].
	group addCritique: aCritique