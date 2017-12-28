I am special kind of typed query which always return constant collection of items independently of scope.
Items are supposed to be homogeneous collection (a kind of same class).

To create my instance use following methods: 

	ClyConstantQuery returning: { Object. String }.
	ClyConstantQuery returning: { Object. String } as: (ClySortedQueryResult using: ClySortByNameFunction ascend).
	ClyConstantQuery returning: { Object. String } from: aScope 
	
 
Internal Representation and Key Implementation Points.

    Instance Variables
	resultItems:		<Collection>
