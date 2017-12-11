I am a query to retrieve references to given classes.
I exist only for convenience because you can also use my superclass for same goal.

I provide suitable method to create instances directly with classes (no need to think about class bindings):
	ClyClassReferences to: { Point. Collection }

Also I redefine description. So in tools you will see clear name "References to ".

And for execution I perform extra trick to support remote scenario when class bindings are transferred from client to server. It is important to get local binding instances on server side to correctly filter methods