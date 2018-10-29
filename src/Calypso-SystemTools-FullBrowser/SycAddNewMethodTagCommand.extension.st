Extension { #name : #SycAddNewMethodTagCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycAddNewMethodTagCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 2 for: ClyMethodGroupContextOfFullBrowser 
]
