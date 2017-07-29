running
setUp
	| context1 topContext bottomContext |
	super setUp.
	bottomContext := self newContextFor: #bottomMethodInStack.
	context1 := self newContextFor: #method1InStack.
	topContext :=  self newContextFor: #topMethodInStack.
	topContext privSender: context1.
	context1 privSender: bottomContext.
	process := Process new.
	process suspendedContext: topContext