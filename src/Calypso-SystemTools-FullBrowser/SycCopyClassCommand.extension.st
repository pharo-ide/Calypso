Extension { #name : #SycCopyClassCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycCopyClassCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyClassContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycCopyClassCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $c meta for: ClyClassContextOfFullBrowser 
]
