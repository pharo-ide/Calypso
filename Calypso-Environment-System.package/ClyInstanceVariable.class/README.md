I represent instance variable of class.
I am like slot but include explicit information about declaring class.

You can create my instance using:
	ClyInstanceVariable named: aSymbol declaredIn: aClass
	ClyInstanceVariable slot: aSlot declaredIn: aClass
 
Internal Representation and Key Implementation Points.

    Instance Variables
	declaringClass:		<Class>
	slot:		<Slot>