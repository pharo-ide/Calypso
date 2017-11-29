instance creation
for: aProject named: aString managedBy: aPackageManager
	^self new 
		name: aString;
		manager: aPackageManager;
		project: aProject