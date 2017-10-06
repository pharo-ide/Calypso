navigation
selectPackage: aPackage

	self changeNavigationStateBy: [
		self packageSelection selectItemsWith: { aPackage }
	]