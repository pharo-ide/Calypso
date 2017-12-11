operations
executeUndoBy: aBlock
	undoExecuting := true.
	aBlock ensure: [ undoExecuting := false. waitingNewState := true ]