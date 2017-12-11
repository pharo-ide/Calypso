I am environment where user navigates over objects in particular scope of other objects. I implement cache of requested scopes and evaluated queries.

First user ask me for specific scope where he want to look at system. And then from this scope user queries specific environment content:

	env := ClyNavigationEnvironment new.
	scope := env selectScope: ClyPackageScope of: {#Kernel asPackage}.
	scope query: ClySortedClasses

Scope is always selected within list of basis objects which restrict what could be retrieved from given point of view. In example scope will allow to see only classes and methods which belongs to 'Kernel' package.

I maintain weak cache of all seleted scopes which made duplicated queries very fast and memory efficient. 
This cache is a dictionary of dictionary. At first level I split cache by class of environment scope which is key. And at last level I have basis objecs array as keys and scope instances as values.

I have plugins collection which are ClyEnvironmentPlugin subclasses. They affect set of properties for each item which is retrieved by queries.
These properties are used by UI related plugins to extend look and feel of tools.

For more details look at ClyEnvironmentScope and ClyEnvironmentContent comments.

Public API and Key Messages

- selectScope: scopeClass of: arrayOfObjects
- withCachedScopesDo: aBlock
- resolveItem: anEnvironmentItem of: anEnvironmentContent
 
Internal Representation and Key Implementation Points.

    Instance Variables 
	plugins:		<Collection of<ClyEnvironmentPlugin>>>
	scopeCache:		<Dictionary of<ClyEnvironmentScope class,Dictionary of<Array,ClyEnvironmentScope>>>
	updateStrategy:	<ClyEnvironmentUpdateStrategy>