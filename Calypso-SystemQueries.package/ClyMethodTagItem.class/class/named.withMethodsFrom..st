instance creation
named: tagName withMethodsFrom: aClassScope
	^(self of: tagName asSymbol named: tagName)
		addChildren: ClyChildrenMethods with: (ClyTaggedMethods by: tagName from: aClassScope)