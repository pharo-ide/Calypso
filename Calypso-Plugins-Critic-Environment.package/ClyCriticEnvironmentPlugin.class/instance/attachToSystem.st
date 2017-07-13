controlling
attachToSystem
	super attachToSystem.
	
	systemCritic attachToSystem: environment systemEnvironment.
	systemCritic whenAnalysisDoneSend: #criticAnalysisDone: to: self