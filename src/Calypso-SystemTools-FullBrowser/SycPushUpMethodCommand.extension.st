Extension { #name : #SycPushUpMethodCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycPushUpMethodCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 2000 for: ClyMethodContextOfFullBrowser 
]
