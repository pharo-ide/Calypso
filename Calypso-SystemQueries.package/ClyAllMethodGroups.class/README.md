I am a query of all method groups from given scope.

Scope should support #methodGroupsDo:. 
Currently it is only ClyAbstractClassScope.

The scope delegates method group building to the environment plugins.
It asks each plugin to collect method group providers using: 

	plugin collectMethodGroupProviders 

And then each provider creates set of method groups using method: 

	groupProvider buildGroupsFrom: aClassScope

The scope ensures that all methods from given scope will be enumerated only once.
So provider should return groups without looking into the methods of scope.
Then the scope itself will check that every built group includes at least one method:

	aGroup dependsOnMethod: aMethod

So scope will enumerate all available methods once and verify each group.

Scope also allow static groups which do not need any method check. Provider of such groups should return true from method #isStatic: 
	
	methodGroupProvider isStatic >>> true

Look at ClyMethodGroupProvider for more details