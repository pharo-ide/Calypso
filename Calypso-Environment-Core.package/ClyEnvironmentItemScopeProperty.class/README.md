I am used to specify scope of environment item. By default environment content  defines scope of underlying items. And I allow to redefine it for particular objects.

You can create my instances by: 
	ClyEnvironmentItemScopeProperty itemScope: aClass

But there are suitable methods on ClyEnvironmentItem: 
	- item scope
	- item scope: aClass

I cache all my instances. I use class variable "Scopes" to ensure single property instance for each concrete class. 

Internal Representation and Key Implementation Points.

    Instance Variables
	itemScope:		<ClyEnvironmentScope class>