Extension { #name : #SycAddNewClassTagCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycAddNewClassTagCommand classSide >> fullBrowserClassGroupMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyClassGroupContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycAddNewClassTagCommand classSide >> fullBrowserPackageMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyPackageContextOfFullBrowser 
]
