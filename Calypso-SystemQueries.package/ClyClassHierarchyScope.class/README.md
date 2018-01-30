I am a root of scope classes which represent visibility on objects which are accessible from the particular kind of class hierarchy. 
For example there is ClySuperclassScope which see all superclasses of basis classes and all their methods (inherited by basis).
And there is ClySubclassScope which shows all subclasses and their methods.

I implement all abstract methods of superclass and introduce single one for my subclasses: 

- classesRelatedTo: aClass do: aBlock

In this method subclasses should evaluate given block with all other classes which are related to given class according to the logic of given class hierarchy.

My varable localScopeClass specifies what part of class itself is visible. It can be instance side, class side or both with corresponsing variable value: ClyInstanceSideScope, ClyClassSideScope and ClyBothMetaLevelClassScope.

Internal Representation and Key Implementation Points.

    Instance Variables
	localScopeClass:		<CluLocalClassScope class>