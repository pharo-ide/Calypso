building
runBuildProcess

	buildProcess := [self buildActualResult] 
		forkAt: Processor userBackgroundPriority 
		named: 'Build result of ', buildingQuery printString