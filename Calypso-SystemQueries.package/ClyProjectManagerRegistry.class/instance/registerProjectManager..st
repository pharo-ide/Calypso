registration
registerProjectManager: aPackageManager
	projectManagers removeAllSuchThat: [ :each | each class = aPackageManager class ].
	projectManagers add: aPackageManager 