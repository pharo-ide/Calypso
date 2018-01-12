controlling
ensureSelectedItem

	| selectionIndex |
	self selection isEmpty ifFalse: [ ^self ].
	self dataSource isEmpty ifTrue: [ ^self ]. 
	
	selectionIndex := 1.
	desiredSelection ifNotNil: [ 
		selectionIndex := desiredSelection lastSelectedItem globalPosition
									min: self dataSource numberOfRows ].
	self selection selectItems: {self dataSource elementAt: selectionIndex}.
	"following sentence is required to make first item selected in cases
	where browser is just opened and automatic item visibility 
	can be wrongly computed"
	UIManager default defer: [self selection ensureVisibleLastItem]