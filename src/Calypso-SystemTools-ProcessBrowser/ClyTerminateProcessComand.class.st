Class {
	#name : #ClyTerminateProcessComand,
	#superclass : #ClyProcessComand,
	#category : 'Calypso-SystemTools-ProcessBrowser'
}

{ #category : #activation }
ClyTerminateProcessComand class >> processBrowserContextMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byRootGroupItemFor: ClyProcessContextOfProcessBrowser
]

{ #category : #activation }
ClyTerminateProcessComand class >> processBrowserShortcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $t meta for: ClyProcessContextOfProcessBrowser
]

{ #category : #activation }
ClyTerminateProcessComand class >> processBrowserToolbarActivation [
	<classAnnotation>
	
	^ClyToolbarActivation byRootGroupItemFor: ClyProcessContextOfProcessBrowser
]

{ #category : #accessing }
ClyTerminateProcessComand >> defaultMenuIconName [
	^#remove
]

{ #category : #accessing }
ClyTerminateProcessComand >> defaultMenuItemName [
	^'Terminate'
]

{ #category : #execution }
ClyTerminateProcessComand >> execute [
	
	processes do: #terminate
]
