accessing
label
	| label |
	label := ownerTool extendingPackage 
		ifNil: ['extension']
		ifNotNil: [:package | package name ].
	ownerTool modifiesExtension ifTrue: [ label := '*', label ].
	^label