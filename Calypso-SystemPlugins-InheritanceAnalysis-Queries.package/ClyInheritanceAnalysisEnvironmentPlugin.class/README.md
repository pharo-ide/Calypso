I plug environment with many kind of inheritance hints.

I tag abstract classes and method.
I analyze method inheritance and tag method with overriden and overriding tags.

I maintain cache of override method statuses in variable methodCache.
It is a dictionary in form of selector->methodClass->status.
Status is represented by simple two items array in form {ClyOverridingMethodTag instance. ClyOverriddenMethodTag instance}. If method does not overridden then there will be nil in this status array at 2 second position.
I am subscribed on system changes and invalidate methodCache when related classes or methods are changed (look at #attachToSystem method for details).

In addition I provide following method groups:
	- abstract methods
	- override methods
	- overridden methods 
	- should be implemented methods