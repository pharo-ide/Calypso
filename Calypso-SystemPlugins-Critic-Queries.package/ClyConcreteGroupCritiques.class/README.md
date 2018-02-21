I return critiques of my base query which belongs to particular group.

To create my instance use following expression: 

	ClyConcreteGroupCritiques filter: aCritiqueQuery from: aScope byGroup: aString
 
Internal Representation and Key Implementation Points.

    Instance Variables
	groupName:		<String>