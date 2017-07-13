updating
buildTitleFromSelections
	| newTitle |
	
	self selectedProjects isEmpty ifFalse: [ 
		newTitle := self selectedProjects lastSelectedItem name].
	
	self selectedPackages isEmpty ifFalse: [ 
		newTitle := self selectedPackages lastSelectedItem name].
	
	self selectedClasses isEmpty ifTrue: [ ^newTitle ].
	newTitle := self selectedClasses lastSelectedItem name.
	
	self selectedMethods isEmpty ifTrue: [ ^newTitle ].
	^newTitle, '>>', self selectedMethods lastSelectedItem name