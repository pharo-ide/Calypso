instance creation
named: tagName withClassesFrom: aPackageScope
	^(self of: tagName asSymbol named: tagName)
		addChildren: ClyChildrenClasses with: (ClyTaggedClasses by: tagName from: aPackageScope)