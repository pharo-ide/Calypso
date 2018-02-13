I represent hierarchy of classes where roots are all common superclasses and children of every class are its subclasses.

In addition I provide default hierarchy for variables and for method visibility.

Variable hierarchy order them by relation between defining classes. I keep default hierarchy in class side variable #hierarchyForVariables.
You can invert it using settings or just by method call: 

	ClySubclassHierarchy invertVariableHierarchy.
	
The method visibility hierarchy is used to represent inherited classes in full browser when you expand first item in third pane. I manage default hierarchy in variable #hierarchyForMethodVisibility.
You can invert it using settings or just by method call: 

	ClySubclassHierarchy invertMethodVisibilityHierarchy