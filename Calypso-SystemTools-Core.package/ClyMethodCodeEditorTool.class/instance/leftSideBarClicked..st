events handling
leftSideBarClicked: anEvent
	"here we are executing default command for source node at the text line under click"
	| aNode |

"	(self canInstallMethodBreakpoint )
		ifFalse: [ ^ self ].

	aNode := self breakpointInstallationNodeFor: anEvent cursorPoint.

	self breakOn: aNode	"