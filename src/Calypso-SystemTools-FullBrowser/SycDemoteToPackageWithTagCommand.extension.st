Extension { #name : #SycDemoteToPackageWithTagCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycDemoteToPackageWithTagCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: CmdExtraMenuGroup for: RPackage asCalypsoItemContext  
]
