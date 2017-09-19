accessing-messages
selectedMessages
	^self selectedMethods collect: [ :each | SycMessageDescription ofMethod: each ]