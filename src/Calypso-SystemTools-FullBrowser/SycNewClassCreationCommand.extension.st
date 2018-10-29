Extension { #name : #SycNewClassCreationCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycNewClassCreationCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 3 for: ClyClassContextOfFullBrowser 
]
