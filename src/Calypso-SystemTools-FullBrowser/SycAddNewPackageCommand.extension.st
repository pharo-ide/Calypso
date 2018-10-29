Extension { #name : #SycAddNewPackageCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycAddNewPackageCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyPackageContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycAddNewPackageCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $k meta, $p meta for: ClyGlobalContextOfFullBrowser  
]
