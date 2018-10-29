Extension { #name : #SycPushUpVariableCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycPushUpVariableCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 2000 for: ClyVariableContextOfFullBrowser 
]
