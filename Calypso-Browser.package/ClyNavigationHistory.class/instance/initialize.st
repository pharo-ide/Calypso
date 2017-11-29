initialization
initialize
	super initialize.
	undoExecuting := false.
	redoExecuting := false.
	waitingNewState := true.
	undoList := OrderedCollection new.
	redoList := OrderedCollection new