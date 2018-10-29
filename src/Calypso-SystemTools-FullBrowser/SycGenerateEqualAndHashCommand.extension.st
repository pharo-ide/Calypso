Extension { #name : #SycGenerateEqualAndHashCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycGenerateEqualAndHashCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: CmdExtraMenuGroup for: ClyClassContextOfFullBrowser
]
