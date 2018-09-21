Class {
	#name : #ClyResetMethodTagForEditorCommand,
	#superclass : #ClyMethodEditorCommand,
	#category : #'Calypso-SystemTools-Core-Editors-Methods'
}

{ #category : #testing }
ClyResetMethodTagForEditorCommand class >> canBeExecutedInContext: aToolContext [

	^ (super canBeExecutedInContext: aToolContext)
		and: [ aToolContext tool isKindOf: ClyMethodCodeEditorToolMorph ]
]

{ #category : #activation }
ClyResetMethodTagForEditorCommand class >> methodEditorShorcutActivation [
	<classAnnotation>
	
	^CmdShortcutActivation by: $e meta, $r meta for: ClyTextEditorContext
]

{ #category : #accessing }
ClyResetMethodTagForEditorCommand >> defaultMenuItemName [

	^ 'Unclassify method'
]

{ #category : #execution }
ClyResetMethodTagForEditorCommand >> execute [

	| tagEditor |
	tagEditor := methodEditor tagsAndPackageEditor.
	tagEditor resetTagsAndPackage 
]
