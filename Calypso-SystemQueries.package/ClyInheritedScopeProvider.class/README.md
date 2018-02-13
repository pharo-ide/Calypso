I am special annotation which marks classes that they can provide inherited scope.

Users do not need to lookup my instances. They can simple use following method which will find appropriate class and create the scope using it:

	ClyInheritedScopeProvider createScopeFrom: aClassScope

Or simply convert given class scope using: 

	aClassScope asInheritedScope
	
I am used to be able redefine meaning of inherited scope in the system. 
By default it is ClySuperclassScope. But with traits it is composite scope which also includes inherited traits.

During annotations lookup I just use first registered annotation with lagest priority. 
For example ClyInheritedTraitScope is annotated by me with high priority value 100.

I expect that annotated classes will implement following class side method 

- createInheritedScopeFrom: aClassScope

Look at ClyInheritedScopeProvider references for examples