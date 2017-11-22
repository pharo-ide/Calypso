navigation
selectPackage: aPackage

	self changeStateBy: [
		self packageSelection selectItemsWith: { aPackage }
	]