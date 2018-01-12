command execution
executeCommand: aCommand by: aCommandActivator
	aCommand needsConfirmation ifTrue: [
		aCommand requestUserConfirmationUsing: aCommandActivator].
	
	aCommand execute 