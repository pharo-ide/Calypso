Extension { #name : #SycPromotePackageFromTagCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycPromotePackageFromTagCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: CmdExtraMenuGroup for: ClyTaggedClassGroup asCalypsoItemContext
]
