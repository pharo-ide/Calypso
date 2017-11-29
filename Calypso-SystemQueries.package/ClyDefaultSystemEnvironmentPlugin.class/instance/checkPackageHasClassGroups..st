item decoration
checkPackageHasClassGroups: aPackage
	| providers packageScope |
	packageScope := ClyPackageScope of: { aPackage } in: environment.
	
	environment pluginsDo: [ :plugin |
		providers := plugin collectClassGroupProviders.
		providers do: [ :each | 
			each classGroupsIn: packageScope do: [:group | ^true]]].
	
	^false