updating
buildTitleFromSelections
	| newTitle |
	
	self projectSelection isEmpty ifFalse: [ 
		newTitle := self projectSelection lastSelectedItem name].
	
	self packageSelection isEmpty ifFalse: [ 
		newTitle := self packageSelection lastSelectedItem name].
	
	self classSelection isEmpty ifTrue: [ ^newTitle ].
	newTitle := self classSelection lastSelectedItem name.
	
	self methodSelection isEmpty ifTrue: [ ^newTitle ].
	^newTitle, '>>', self methodSelection lastSelectedItem name