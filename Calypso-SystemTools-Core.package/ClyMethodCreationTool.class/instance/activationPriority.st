accessing
activationPriority
	"We want creation tool be active by default only when user select method group.
	Instead when user select class creation tool should not be activated"
	^browser methodGroupSelection isEmpty 
		ifTrue: [ 0]
		ifFalse: [ ClyClassDefinitionEditorTool tabOrder + 1 ]