private
methodGroupProvidersDo: aBlock

	| providers allClasses |
	allClasses := self collectAllClasses.
	
	environment pluginsDo: [ :plugin |
		providers := plugin collectMethodGroupProvidersFor: allClasses.
		providers do: aBlock]