accessing
classAndCritiquesDo: twoArgsBlock
	methodQuery scope collectAllClasses 
		with: self classAnalysisResults do: twoArgsBlock