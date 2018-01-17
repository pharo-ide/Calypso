I am special tag to mark objects that they have particilar kind of children. Kind of children is represented by children type which is class of children objects by default.
For example you can mark class with methods:
	classItem markWithChildrenOf: ClyMethod.

To create my instance manually use:
	ClyChildrenTag childrenType: ClyMethod

I cache all my instances. I use class variable "Types" to ensure single property instance for each scope class.
	
You can ask browser item to check that object has particular children:
	classItem hasChildrenOf: ClyMethod

Internal Representation and Key Implementation Points.

    Instance Variables
	childrenType:		<Class>