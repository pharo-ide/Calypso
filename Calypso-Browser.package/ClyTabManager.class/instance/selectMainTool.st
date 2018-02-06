private
selectMainTool

	| desiredTools mainTool |
	desiredTools := tools select: [ :each | desiredSelection includes: each class].
	
	desiredTools ifEmpty: [ desiredTools := tools ].

	mainTool := desiredTools detectMax: [ :each | 
		self activationPriorityOf: each].
	mainTool selectAsMainTab.
	^mainTool