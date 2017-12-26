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
	mainItem systemDefinition isInstanceSide & (metaLevelScope = ClyClassSideScope)
		ifTrue: [ newTitle := newTitle , ' class' ].
	self methodSelection isEmpty ifFalse: [ 
		newTitle := newTitle , '>>' , self methodSelection lastSelectedItem name ].
	^newTitle