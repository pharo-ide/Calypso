navigation
selectPackage: aPackage atClassTag: tagName

	| packageItem targetClassGroup |
	self changeNavigationStateBy: [
		self selectPackage: aPackage.
		packageItem := self selectedPackages lastSelectedItem.
		packageItem expand.
		targetClassGroup := packageItem childrenItems detect: [:each | each name = tagName ].
	
		packageView selection selectItems: { targetClassGroup }
	]