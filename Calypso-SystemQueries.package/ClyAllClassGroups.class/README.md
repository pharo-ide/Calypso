I am a query of all class groups from given scope.

Scope should support #classGroupsDo:. 
Currently it is only ClyPackageScope.

The scope delegates class group building to the environment plugins.
It asks each plugin to collect class group providers using: 

	plugin collectClassGroupProviders 

And then each provider creates set of class groups using method: 

	groupProvider classGroupsIn: aPackageScope do: aBlockWithGroup
	
Look at ClyClassGroupProvider for details