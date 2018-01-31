I am most trivial method query which just returns constant set of methods.

I implement logic to always return live method instances:
- I filter out removed methods
- I return actual version of methods if they were modified
Look at the method #filterInstalledMethods: for details.

To create my instances use:
	ClyConstantMethodQuery with: {Rectangle >> #area}
Or with special description:
	ClyConstantMethodQuery named: 'todo methods' with: {Rectangle >> #area}
 
Internal Representation and Key Implementation Points.

    Instance Variables
	description:		<String>
	methods:		<IdentitySet of: CompiledMethod>