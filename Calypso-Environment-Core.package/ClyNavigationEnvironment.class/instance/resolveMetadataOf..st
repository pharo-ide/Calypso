queries
resolveMetadataOf: anEnvironmentContent
	
	plugins do: [ :each | anEnvironmentContent resolveMetadataBy: each].