navigation
selectPackage: aPackage atClassTag: tagName

	| packageItem targetClassGroup |
	self changeStateBy: [
		self selectPackage: aPackage.
		packageItem := self packageSelection lastSelectedItem.
		packageItem expand.
		targetClassGroup := packageItem childrenItems detect: [:each | each name = tagName ].
	
		packageView selection selectItems: { targetClassGroup }
	]