item decoration
checkPackageHasClassGroups: aPackage
	| providers items |
		
	items := OrderedCollection new.
	
	environment pluginsDo: [ :plugin |
		providers := plugin collectClassGroupProvidersFor: aPackage. 
		providers do: [ :each | each classGroupsDo: [:group | ^true]]].
	
	^false