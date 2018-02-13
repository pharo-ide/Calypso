I represent the local scope of classes which they define by themselves:

	ClyClassScope of: Array 
	
It represents instance side of Array.

	ClyClassScope of: Array class 
	
It represents class side of Array.

Also I provide natural hierarchy traversal of basis classes. 
It means that 

	ClySuperclassScope of: Array class localScope: ClyClassScope  

will see Class and Object because any metaclass is subclass of Class which by itself is subclass of Object.

It is ortogonal to behaviour of ClyMetaLevelClassScope subclasses which restrict hierarchical traversal to the relationships of instance side. For example 

	ClySuperclassScope of: Array class localScope: ClyClassSideScope	

will not see Class and Object. It will end up at Object class and ProtoObject class.

So I am the default local scope for hierarchy scopes which gives the natural look at classes without user metalevel restrictions