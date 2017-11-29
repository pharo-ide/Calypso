controlling
attachToSystem
	super attachToSystem.
	
	systemCritic attachToSystem: environment system.
	systemCritic whenAnalysisDoneSend: #criticAnalysisDone: to: self