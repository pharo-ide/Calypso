I provide tagged method groups. 
I detect tagged methods and create ClyTaggedMethodGroup for each unique tag. If there are methods without tags I create ClyNoTagMethodGroup for them.

I skip any method which tagged with '*PackageName' convension. Class extensions are handled by different provider: ClyExtendedMethodGroupProvider. It creates only general extensions group ClyExtendedMethodGroup which can be expanded by subgroups for each package which extends given class. Subgroups are represented by explicit ClyExternalPackageMethodGroup. No star-convension is needed here.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	methodGroups:		<Collection of: <ClyMethodGroup>>
	noTagGroup:		<ClyNoTagMethodGroup>