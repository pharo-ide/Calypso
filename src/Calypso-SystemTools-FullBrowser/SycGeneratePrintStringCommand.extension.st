Extension { #name : #SycGeneratePrintStringCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycGeneratePrintStringCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: CmdExtraMenuGroup for: ClyClassContextOfFullBrowser
]
