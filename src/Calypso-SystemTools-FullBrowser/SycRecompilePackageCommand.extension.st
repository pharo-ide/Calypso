Extension { #name : #SycRecompilePackageCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRecompilePackageCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: CmdExtraMenuGroup for: RPackage asCalypsoItemContext
]
