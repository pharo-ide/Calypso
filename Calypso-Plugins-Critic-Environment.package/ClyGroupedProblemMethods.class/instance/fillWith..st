building
fillWith: methods
	| groups |
	groups := Dictionary new.
	
	methods do: [ :eachMethod | 
		buildingQuery systemCritic withAnalysisResultFor: eachMethod do: [ :analysisResult | 
			analysisResult critiques do: [ :eachCritique |
				self buildMethodGroupWithCritique: eachCritique on: groups ]]].
	
	groups do: [ :each | items add: each asCalypsoBrowserItem  ]