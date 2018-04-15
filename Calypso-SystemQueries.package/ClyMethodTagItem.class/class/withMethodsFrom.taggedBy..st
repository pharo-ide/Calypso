instance creation
withMethodsFrom: aClassScope taggedBy: tagName
	^ClyMethodTagItem named: tagName on: (ClyTaggedMethods by: tagName from: aClassScope)