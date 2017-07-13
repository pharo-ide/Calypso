registration
registerPackageManager: aPackageManager
	packageManagers removeAllSuchThat: [ :each | each class = aPackageManager class ].
	packageManagers add: aPackageManager 