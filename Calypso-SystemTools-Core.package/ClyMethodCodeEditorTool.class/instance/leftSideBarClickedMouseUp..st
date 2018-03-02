events handling
leftSideBarClickedMouseUp: anEvent
	"Here we are building context menu for left side bar"
	| sourceNode menuMorph targetContext |
	anEvent yellowButtonChanged ifFalse: [ ^ self ].
	
	sourceNode := self findSourceNodeAt: anEvent cursorPoint.
	targetContext := ClySourceCodeContext for: self selectedNode: sourceNode.
	
	menuMorph := CmdTextLeftBarMenuCommandActivation buildMenuFor: self inContext: targetContext.
	menuMorph popUpInWorld: self currentWorld