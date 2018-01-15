command execution
executeCommand: aCommand by: aCommandActivator

	aCommand isComplexRefactoring ifTrue: [
		aCommand confirmRefactoringInContext: self by: aCommandActivator].
	
	aCommand execute