analysis
buildClassCritiqueGroupsFor: aClass on: resultDictionary

	aClass localMethods do: [ :each |		
		self withAnalysisResultFor: each do: [ :analysisResult | 
			analysisResult critiques do: [ :eachCritique |
				self buildMethodGroupWithCritique: eachCritique on: resultDictionary ]]]