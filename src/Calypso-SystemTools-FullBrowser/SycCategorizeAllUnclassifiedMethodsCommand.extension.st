Extension { #name : #SycCategorizeAllUnclassifiedMethodsCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycCategorizeAllUnclassifiedMethodsCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 10000 for: ClyMethodGroupContextOfFullBrowser 
]
