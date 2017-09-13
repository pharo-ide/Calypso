navigation
selectPackage: aPackage

	self changeNavigationStateBy: [
		self selectedPackages selectItemsWith: { aPackage }
	]