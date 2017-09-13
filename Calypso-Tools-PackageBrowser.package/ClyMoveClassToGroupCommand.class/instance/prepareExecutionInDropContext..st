execution
prepareExecutionInDropContext: aToolContext
	super prepareExecutionInDropContext: aToolContext.
	classGroup := aToolContext lastSelectedClassGroup
	"this command can be also activated on package which is polimorphic to class group.
	If given context is package context then it will return package as class group"