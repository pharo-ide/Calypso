private
methodGroupProvidersDo: aBlock
	| providers allClasses |
	allClasses := self collectAllClasses.
	environment
		pluginsDo: [ :plugin | 
			providers := plugin collectMethodGroupProviders.
			providers do: aBlock ]