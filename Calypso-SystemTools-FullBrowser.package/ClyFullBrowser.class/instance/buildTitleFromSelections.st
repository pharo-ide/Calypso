updating
buildTitleFromSelections
	| newTitle mainItem |	
	self projectSelection isEmpty ifFalse: [ 
		newTitle := self projectSelection lastSelectedItem name].
	
	self packageSelection isEmpty ifFalse: [ 
		newTitle := self packageSelection lastSelectedItem name].
	
	self classSelection isEmpty ifTrue: [ ^newTitle ].
	
	mainItem := self methodSelection isEmpty 
		ifTrue: [ self classSelection lastSelectedItem ]
		ifFalse: [ self methodSelection lastSelectedItem].

	newTitle := mainItem systemDefinition printDefiningClass.
	self methodSelection isEmpty ifFalse: [ 
		newTitle := newTitle , '>>' , self methodSelection lastSelectedItem name ].
	^newTitle