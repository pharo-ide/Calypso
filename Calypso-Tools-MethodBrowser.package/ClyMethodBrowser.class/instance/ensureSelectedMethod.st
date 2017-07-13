navigation
ensureSelectedMethod

	methodView selection isEmpty ifFalse: [ ^self ].
	
	methodView dataSource isEmpty ifFalse: [ 
		methodView initiateUIChangeBy: [ 
			methodView selection selectItems: {methodView dataSource elementAt: 1}.
			"following sentence is required to make first item selected in cases
			where browser is just opened and automatic item visibility 
			can be wrongly computed"
			UIManager default defer: [methodView selection ensureVisibleLastItem]
	]].