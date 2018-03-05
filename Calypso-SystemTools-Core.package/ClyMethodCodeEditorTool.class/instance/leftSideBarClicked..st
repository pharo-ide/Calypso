events handling
leftSideBarClicked: anEvent
	"here we are executing default command for source node at the text line under click"
	
	| targetContext |
	targetContext := self sourceNodeContextAt: anEvent cursorPoint.
	
	CmdTextLeftBarClickActivation 
		activateAllInContext: targetContext by: [:activator | ^activator executeCommand ]