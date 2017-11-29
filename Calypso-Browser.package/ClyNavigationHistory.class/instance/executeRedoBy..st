operations
executeRedoBy: aBlock
	redoExecuting := true.
	aBlock ensure: [ redoExecuting := false. waitingNewState := true ]