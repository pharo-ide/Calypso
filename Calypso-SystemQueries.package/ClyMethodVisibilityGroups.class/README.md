I am a class query result whch represent classes as ClyInheritedMethodGroup instances wrapped as browser items.
I am used to represent classes when you expand first item in the third pane of full browser.
ClyInheritedMethodGroup instances provide tools to control method visibility in the browser by showing/hidding methods of corresponding inherited classes.

I sort classes hierarchically according to specified hierarchy. You can create my instances with: 

	ClyMethodVisibilityGroups withHierarchy: ClySubclassHierarchy inverse.
	
Tools create me with default hierarchy using: 
	
	ClyMethodVisibilityGroups withDefaultHierarchy.

Calypso provides settings to invert default hierarchy and to extend it with plugins. 
It is based on class annotation ClyMethodVisibilityProvider. Look at it for details.

Internal Representation and Key Implementation Points.

    Instance Variables
	hierarchy:		<ClyClassHierarchy>