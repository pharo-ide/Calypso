events handling
leftSideBarClickedMouseUp: anEvent
	"Here we are building context menu for left side bar"
	| menuMorph targetContext |
	anEvent yellowButtonChanged ifFalse: [ ^ self ].

	targetContext := self sourceNodeContextAt: anEvent cursorPoint.
	
	menuMorph := CmdTextLeftBarMenuCommandActivation buildMenuFor: self inContext: targetContext.
	menuMorph popUpInWorld: self currentWorld