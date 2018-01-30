tool controlling
showMessage: aMessageDescription renamedTo: newSelector
	| method newMethod |
	method := aMessageDescription contextUser.
	newMethod := method origin >> newSelector.
	self showMethod: newMethod