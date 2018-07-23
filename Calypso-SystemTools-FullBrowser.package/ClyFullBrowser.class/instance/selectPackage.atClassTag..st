navigation
selectPackage: aPackage atClassTag: tagName

	| packageItem targetClassGroup foundPackages |

	self changeStateBy: [
		foundPackages := packageView findItemsWith: {aPackage}.
		foundPackages ifEmpty: [ 
			self switchToPackages.
			foundPackages := packageView findItemsWith: {aPackage} ].
		packageItem := foundPackages first.
		packageItem expand.
		targetClassGroup := packageItem childrenItems detect: [:each | each name = tagName ].
	
		packageView selection selectItems: { targetClassGroup }
	]