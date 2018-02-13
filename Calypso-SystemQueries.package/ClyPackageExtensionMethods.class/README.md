I return all methods from the scope which are extended by particular package.

To instantiate my instances use following expressions: 

	ClyPackageExtensionMethods of: aPackage.
	ClyPackageExtensionMethods of: aPackage from: aScope
 
Internal Representation and Key Implementation Points.

    Instance Variables
	package:		<RPackage>
