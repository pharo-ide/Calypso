printing
printMethodTags

	^ownerTool methodTags 
		ifEmpty: [ 'as yet unclassified' ]
		ifNotEmpty: [ :tags | tags joinUsing: ', ' ]