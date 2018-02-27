I am a base class for commands which remove particular kind of metalink from given method or source node.
My subclasses should implement following class side methods: 

- metalinkManagerClass
It is a class which manages target type of metalinks. For example Breakpoint or ExecutionCounter.

- contextMenuOrder
It should return order in context menu