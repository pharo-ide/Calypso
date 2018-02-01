I am abstract variable query result which represents variables as ClyVariableMethodGroup instances.
My subclases are used in full browser to show variables in third pane.

For subclasses I provide dictionary kind of variable type -> defining class -> variables where 
- variable type is class of given variable. For example there are ClyInstanceVariable and ClyClassVariable.
- defining class is a class which defines given variables 
- and variables is the sorted by name list  

So subclasses should implement method 

- fillWithGroupedVariables: varsPerTypeAndDefiningClass 

which will build required variable groups from given variable structure.
General logic to convert concrete type of variables to groups is common for all subclasses. So they just call my methods: 

- fillWithVariables: varsPerClass type: varTypeClass

which really creates variable group items.
I order variables according to their class hierarchy. The concrete kind of hierarchy is specified in my variable #hierarchy.
So you can get variable list in the order from superclass to subclass or otherwise.

To create my instances use following method: 

	ClyGroupedInstanceVariables withHierarchy: ClySubclassHierarhy new.

Or ask for default hierarchy: 

	ClyGroupedInstanceVariables withDefaultHierarchy.
	
The default hierarchy for variables are managed by ClySubclassHierarchy class:
 	
	ClySubclassHierarchy hierarchyForVariables.
	 
Internal Representation and Key Implementation Points.

    Instance Variables
	hierarchy:		<ClyClassHierarchy>