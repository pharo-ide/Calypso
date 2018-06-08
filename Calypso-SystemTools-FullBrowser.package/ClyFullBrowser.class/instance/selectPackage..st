navigation
selectPackage: aPackage

	self changeStateBy: [
		packageView selection selectItemsWith: { aPackage }.
		packageView selection isEmpty ifTrue: [ self switchToPackages ].
		packageView selection selectItemsWith: { aPackage }.
	]