building
runBuildProcess

	buildProcess := [self buildActualResult] newProcess.
	buildProcess 
		name: 'Build result of ', buildingQuery printString;
		priority: Processor userBackgroundPriority.
	buildProcess resume