I am a special kind of system query result which merges together multiple kind of system items in single hierarchy.
So I sort hierarchically classes, methods and class comments, all together.

I am used in query browser to show items.

First I build subclass hierarchy of all classes with define given objects.
For this I convert every object to the browser item and ask it systemDefinitionClass.
At the end I got map between class and children items which are defined by this class. 
The children are sorted using special ClySortSystemItemFunction which takes into account different type of items and their own default sort logic.

Using this built hierarchy I fill my items in hierarchical order.