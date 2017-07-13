building
buildFromObject: anObject
	
	| result item |
	result := self systemCritic analyze: anObject.
	objectAnalysisResults add: result.
	result isComplete ifFalse: [ ^self].
	
	result critiques do: [:each |
		item := ClyEnvironmentItem named: each title with: each.
		items add: item
	]