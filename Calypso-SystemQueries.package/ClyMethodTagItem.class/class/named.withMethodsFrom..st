instance creation
named: tagName withMethodsFrom: aClassScope
	^(self named: tagName with: tagName asSymbol)
		addChildren: ClyChildrenMethods with: (ClyTaggedMethods by: tagName from: aClassScope)