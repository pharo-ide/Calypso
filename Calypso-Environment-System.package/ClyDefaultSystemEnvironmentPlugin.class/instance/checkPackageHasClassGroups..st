items resolving
checkPackageHasClassGroups: aPackage
	| providers items |
		
	items := OrderedCollection new.
	
	environment pluginsDo: [ :plugin |
		providers := plugin collectClassGroupProvidersFor: aPackage. 
		providers do: [ :each | each buildGroupItemsOn: items].
		items ifNotEmpty: [^true]].
	
	^false