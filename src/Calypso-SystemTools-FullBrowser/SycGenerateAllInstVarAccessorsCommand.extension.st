Extension { #name : #SycGenerateAllInstVarAccessorsCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycGenerateAllInstVarAccessorsCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 2.1 for: ClyClassContextOfFullBrowser 
]
