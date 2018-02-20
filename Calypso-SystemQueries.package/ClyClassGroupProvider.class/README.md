I am a root of hierarchy of class group providers.
My subclasses must build class groups for given package scope.

They should implement following method: 

- classGroupsIn: aPackageScope do: aBlock

It should create class group instances and pass them into the block.
Look at ClyClassGroup comment to see how create groups.