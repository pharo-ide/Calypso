operations
tagEditingMethod: aMethod
	| existingTags removedTags newTags |
	existingTags := aMethod tags.
	removedTags := existingTags reject: [ :each | methodTags includes: each ].
	newTags := methodTags reject: [ :each | existingTags includes: each ].
	
	newTags do: [ :each | aMethod tagWith: each asSymbol].
	removedTags do: [ :each | aMethod untagFrom: each asSymbol].