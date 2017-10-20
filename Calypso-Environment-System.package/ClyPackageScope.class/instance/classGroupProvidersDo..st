queries
classGroupProvidersDo: aBlock

	| package providers |
	basisObjects size > 1 ifTrue: [ self error: 'Multiple packages is not supported!' ].	
	package := basisObjects anyOne.
	
	environment pluginsDo: [ :plugin |
		providers := plugin collectClassGroupProvidersFor: package.
		providers do: aBlock]