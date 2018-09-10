accessing
editingText
	^editingPackage packageManifestOrNil 
		ifNil: [ self packageCommentBlank ]
		ifNotNil: [ :manifest | 
			manifest hasComment 
				ifTrue: [ manifest comment ] 
				ifFalse: [ self packageCommentBlank ] ]