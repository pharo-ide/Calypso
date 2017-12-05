tests
testOpeningShouldSubscribeObserver

	self assert: (queryResult hasSubscriber: itemObserver).
	self assert: cursor itemObserver equals: itemObserver