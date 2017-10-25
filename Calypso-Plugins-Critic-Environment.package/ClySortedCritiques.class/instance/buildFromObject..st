building
buildFromObject: anObject
	
	| result item |
	result := self systemCritic analyze: anObject.
	objectAnalysisResults add: result.
	result isComplete ifFalse: [ ^self].
	
	result critiques do: [:each |
		item := ClyFormattedResultItem named: each title with: each.
		items add: item
	]