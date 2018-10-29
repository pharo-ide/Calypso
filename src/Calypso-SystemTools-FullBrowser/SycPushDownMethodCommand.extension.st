Extension { #name : #SycPushDownMethodCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycPushDownMethodCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 2001 for: ClyMethodContextOfFullBrowser 
]
