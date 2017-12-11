I provide tagged class groups. 
I detect tagged classes and create ClyTaggedClassGroup for each unique tag. If there are classes without tags I create ClyNoTagClassGroup for them. But if at the end it is only group I remove it from result.

Internal Representation and Key Implementation Points.

    Instance Variables
	classGroups:		<Collection of:<ClyClassGroup>>