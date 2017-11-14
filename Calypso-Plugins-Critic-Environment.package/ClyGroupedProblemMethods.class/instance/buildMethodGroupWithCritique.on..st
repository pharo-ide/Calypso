building
buildMethodGroupWithCritique: aCritique on: resultDictionary
	| critiqueGroupName group |
	
	critiqueGroupName := aCritique rule group.
	group := resultDictionary at: critiqueGroupName ifAbsentPut: [ 
		ClyConcreteCritiqueMethodGroup named: critiqueGroupName fromClasses: self scope].
	group addCritique: aCritique