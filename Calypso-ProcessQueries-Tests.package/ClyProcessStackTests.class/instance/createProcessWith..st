running
createProcessWith: selectors

	| eachContext |
	contexts := OrderedCollection new.
	selectors do: [ :each | 
		eachContext := self newContextFor: each.
		contexts ifNotEmpty: [ contexts last privSender: eachContext ].
		contexts add: eachContext].

	process := Process new.
	process suspendedContext: contexts first