I represent complex hierarchy scope which merges together multiple kind of class relationship.
Class relations are represented by subclasses of ClySingleClassRelationScope. I use their #classesRelatedTo:do: method to enumerate all classes related to my basis:

	ClyMultipleClassRelationScope>>classesRelatedTo: aClass do: aBlock
		relationScopeClasses do: [ :each | 
			each classesRelatedTo: aClass do: aBlock ]

There is big difference between me and possible composition scope of other class relation scopes. 
For example try look at SomeTrait from the composition scope of ClySuperclassScope and ClyTraitUserScope.
First one will return no classes because traits has no superclass.
And the last one will return all classes and traits which uses given SomeTrait.

But my instance will behaves differently. For every class it will analyze both relationships: superclass and trait user. So every trait user will provide superclasses for the scope:

	ClyMultipleClassRelationScope of: SomeTrait merging: { ClySuperclassScope. ClyTraitUserScope }

From this scope you will see all classes and traits which uses given SomeTrait. But in addition it will show all superclasses of those classes and traits.

So idea behind me is to expand class visibility by multiple relationships. Every class retrieved from the basis will be recursivelly analyzed using all given relationships. 

Internal Representation and Key Implementation Points.

    Instance Variables
	relationScopeClasses:		<Collection of<ClySingleClassRelationScope class>>