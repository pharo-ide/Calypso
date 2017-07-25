I am most trivial method query which just returns methods on which it was created.

I just implement logic to always return live method instances and to react on changes of my methods.

To create my instances use:
	ClyConstantMethodQuery with: {Rectangle >> #area}
Or with special title:
	ClyConstantMethodQuery named: 'todo methods' with: {Rectangle >> #area}
 
Internal Representation and Key Implementation Points.

    Instance Variables
	description:		<String>
	methods:		<IdentitySet of: CompiledMethod>


    Implementation Points