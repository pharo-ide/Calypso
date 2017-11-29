controlling
ensureSelectedItem

	self selection isEmpty ifFalse: [ ^self ].
	self dataSource isEmpty ifTrue: [ ^self ]. 
	
	self initiateUIChangeBy: [ 
		self selection selectItems: {self dataSource elementAt: 1}.
		"following sentence is required to make first item selected in cases
		where browser is just opened and automatic item visibility 
		can be wrongly computed"
		UIManager default defer: [self selection ensureVisibleLastItem]]