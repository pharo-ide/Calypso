controlling
openFor: anItemObserver

	self moveToStart.
	itemObserver := anItemObserver.
	queryResult subscribe: itemObserver