accessing
mainTool

	^tools detectMax: [ :each | 
		self activationPriorityOf: each]
		