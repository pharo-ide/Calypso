Extension { #name : #SycRemoveEmptyMethodTagsCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRemoveEmptyMethodTagsCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 10001 for: ClyMethodGroupContextOfFullBrowser 
]
