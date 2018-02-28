operations
convertToMethodTag: aTagName

	self methods do: [ :each | each tagWith: aTagName ]