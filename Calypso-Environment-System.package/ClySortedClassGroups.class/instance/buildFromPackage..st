building
buildFromPackage: aPackage
		
	| providers |
	providers := environment collectClassGroupProvidersFor: aPackage.
	
	providers do: [ :each | each buildGroupItemsOn: items]