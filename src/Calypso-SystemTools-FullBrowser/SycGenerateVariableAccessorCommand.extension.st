Extension { #name : #SycGenerateVariableAccessorCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycGenerateVariableAccessorCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyVariableContextOfFullBrowser 
]
