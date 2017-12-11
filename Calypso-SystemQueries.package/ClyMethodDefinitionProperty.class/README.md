I describe class and package which define given method.
I also contain isInstanceSide flag which describe instance or class side where method is defined

You can create me by: 
	ClyMethodDefinitionProperty of: aMethod 

You can access actual class or package using: 
		methodDefinition definitionClass
		methodDefinition definitionPackage
 
Internal Representation and Key Implementation Points.

    Instance Variables
	isInstanceSide:		<Boolean>
	packageItem:		<ClyEnvironmentItem of: RPackage>