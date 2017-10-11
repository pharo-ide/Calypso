execution
prepareExecutionInDropContext: aToolContext
	super prepareExecutionInDropContext: aToolContext.
	targetClass := aToolContext lastSelectedClass.
	targetClass := aToolContext resolveCurrentClassSideOf: targetClass