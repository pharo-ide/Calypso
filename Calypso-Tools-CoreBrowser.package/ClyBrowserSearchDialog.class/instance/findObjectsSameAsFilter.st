private
findObjectsSameAsFilter
	itemsView dataSource numberOfRows = 1 ifTrue: [ 
		"single element means that it was found by filter and we can use it without extra search"
		^itemsView dataSource allElements collect: #actualObject ].
	
	^itemsView findItemsSameAsFilter
		ifNotEmpty: [ :foundItems | foundItems collect: #actualObject ]
		ifEmpty: [ CmdCommandAborted signal ]