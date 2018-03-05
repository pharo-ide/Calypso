events handling
leftSideBarClickedMouseUp: anEvent
	"Here we are building context menu for left side bar"
	| menuMorph targetContext |
	anEvent yellowButtonChanged ifFalse: [ ^ self ].

	targetContext := self sourceNodeContextAt: anEvent cursorPoint.
	
	menuMorph := CmdTextLeftBarMenuActivation buildContextMenuFor: self inContext: targetContext.
	menuMorph setInvokingView: self.
	menuMorph invokeModal