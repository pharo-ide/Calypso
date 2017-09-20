navigation
ensureSelectedItem

	resultView selection isEmpty ifFalse: [ ^self ].
	
	resultView dataSource isEmpty ifFalse: [ 
		resultView initiateUIChangeBy: [ 
			resultView selection selectItems: {resultView dataSource elementAt: 1}.
			"following sentence is required to make first item selected in cases
			where browser is just opened and automatic item visibility 
			can be wrongly computed"
			UIManager default defer: [resultView selection ensureVisibleLastItem]
	]].