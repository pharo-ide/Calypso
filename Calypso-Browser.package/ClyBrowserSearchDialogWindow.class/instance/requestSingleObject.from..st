requests
requestSingleObject: dialogTitle from: aQuery
	
	self 
		openOn: aQuery
		withTitle: dialogTitle
		thenDo: [ 
			itemsView selection isEmpty ifTrue: [ 
				^self findObjectsSameAsFilter 
					ifEmpty: [ CmdCommandAborted signal ]
					ifNotEmpty: [ :items | items first]].
	
			^itemsView selection lastSelectedItem actualObject]