tests
testClosing

	cursor close.
	self deny: (queryResult hasSubscriber: itemObserver)