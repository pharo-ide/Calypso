updating
updateMainWindowTitle
	
	| activeWindow |
		
	activeWindow := self activeWindow ifNil: [^self].

	self window ifNotNil: [:w | w  setLabel: activeWindow label]