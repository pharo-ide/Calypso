printing
printMethodTags

	^ownerTool methodTags 
		ifEmpty: [ 'as yet unclassified' asText makeAllColor: Color red ]
		ifNotEmpty: [ :tags | tags joinUsing: ', ' ]