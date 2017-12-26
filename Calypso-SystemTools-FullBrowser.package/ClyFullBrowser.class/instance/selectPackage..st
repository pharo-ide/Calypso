navigation
selectPackage: aPackage

	self changeStateBy: [
		packageView selection selectItemsWith: { aPackage }
	]