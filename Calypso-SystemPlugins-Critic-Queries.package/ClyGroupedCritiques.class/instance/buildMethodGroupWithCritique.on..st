building
buildMethodGroupWithCritique: aCritique on: resultDictionary
	| critiqueGroupName group |
	
	critiqueGroupName := aCritique rule group.
	group := resultDictionary at: critiqueGroupName ifAbsentPut: [ 
		ClyConcreteCritiqueMethodGroup 
			basedOn: aCritique withMethodsFrom: self scope].
	group addCritique: aCritique