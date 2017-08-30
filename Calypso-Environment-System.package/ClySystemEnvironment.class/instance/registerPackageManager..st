package management
registerPackageManager: aPackageManager
	aPackageManager system: self.
	projectManager registerPackageManager: aPackageManager