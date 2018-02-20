I am a root of hierarchy of simple method group providers which always supply single group for given class scope.
I simplify implementation of simple plugins which only want to define one extra method group. They should implement two methods: 

- createMethodQueryFrom: aClassScope
It should return method query representing methods for the group.

- createMethodGroupFor: aMethodQuery from: aClassScope
It should create group instance using given scope. The class scope is given to build subgroups query if needed. Any method group can be expanded to children subgroups

All my subclasses are not static by default. So they particupate in analysis of all methods in the scope