Extension { #name : #SycPushDownVariableCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycPushDownVariableCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 2001 for: ClyVariableContextOfFullBrowser 
]
