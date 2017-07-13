building
collectGroupsFrom: aProject 
		
	| providers |
	providers := environment collectPackageGroupProvidersFor: aProject.
	
	providers do: [ :each | each buildGroupItemsOn: items]