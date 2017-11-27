instance creation
withMethodsFrom: aClassScope taggedBy: tagName
	^ClyTaggedMethodGroup named: tagName on: (ClyTaggedMethods by: tagName from: aClassScope)