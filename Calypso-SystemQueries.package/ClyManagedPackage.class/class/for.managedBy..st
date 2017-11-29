instance creation
for: aPackage managedBy: aPackageManager
	^self new 
		manager: aPackageManager;
		systemPackage: aPackage