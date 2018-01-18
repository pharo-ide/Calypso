I am a root of hierarchy of scope classes which represent a global point of view on concrete system.

My subclasses define what is the concrete system and implement accessing methods to retrieve all possible information from it.

I am supposed to be created with single object basis. In case of multiple basis I signal error.
So to create me use single basis #of: message: 

	ClyConcreteSystemScope of: aSystem

And to access the system I provide simple message #system which just returns single basis item