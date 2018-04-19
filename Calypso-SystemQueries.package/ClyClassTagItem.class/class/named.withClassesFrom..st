instance creation
named: tagName withClassesFrom: aPackageScope
	^(self named: tagName with: tagName asSymbol)
		addChildren: ClyChildrenClasses with: (ClyTaggedClasses by: tagName from: aPackageScope)