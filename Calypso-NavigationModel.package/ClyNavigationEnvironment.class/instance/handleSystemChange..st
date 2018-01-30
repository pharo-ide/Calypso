system changes
handleSystemChange: aSystemAnnouncement

	| todoList todoSize anyResult |
	todoList := 	(queryCache values select: [ :each | each notNil ]) as: IdentitySet.
	todoSize := 0.
	[[todoSize = todoList size] whileFalse: [
		todoSize := todoList size.  
		todoList asArray do: [ :eachResult |
			(todoList includes: eachResult) ifTrue: [  
				eachResult handleSystemChange: aSystemAnnouncement byProcessingList: todoList]]].
	todoList notEmpty] whileTrue: [ 
		anyResult := todoList anyOne.
		anyResult handleSystemChange: aSystemAnnouncement.
		todoList remove: anyResult]