I am special tag to mark objects that they have particilar kind of children. Kind of children is represented by class of environment scope which children arrange.
For example you can mark class with methods:
	classItem markWithChildrenOf: ClyMethodScope.

Manually you can create my instance using:
	ClyChildrenTag childrenScope: ClyMethodScope

I cache all my instances. I use class variable "Scopes" to ensure single property instance for each scope class.
	
You can ask item to check that object has particular children:
	classItem hasChildrenOf: ClyMethodScope

Internal Representation and Key Implementation Points.

    Instance Variables
	childrenScope:		<ClyEnvironmentScope class>