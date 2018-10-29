Extension { #name : #SycRemoveClassCommand }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRemoveClassCommand classSide >> fullBrowserMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemOrder: 10000 for: ClyClassContextOfFullBrowser 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
SycRemoveClassCommand classSide >> fullBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation removalFor: ClyClassContextOfFullBrowser 
]
