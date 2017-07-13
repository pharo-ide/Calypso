I am a root of hierarchy of first class tags which could mark environment items.
For example ClyAbstractClassTag is created to mark abstract classes.

ClyEnvironmentItem provide suitable methods for tagging:
	- item markWith: aSimpleTagClass
	- item isMarkedWith: aSimpleTagClass
	
I provide singleton instance for my subclasses. So tagging items do not produce much garbage