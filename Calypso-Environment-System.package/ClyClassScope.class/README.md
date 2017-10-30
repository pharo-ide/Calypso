I represent scope of classes. 
My basis is set of classes. I see all items which are defined by them:

- classesDo: , just enumerates all my basis classes.
- methodsDo:. enumerates all methods defined by my classes
- methodGroupsDo:, group all methods defined by my classes
- variablesDo:. enumerates all variables defined by my classes
- instanceVariablesDo:, enumerates only instance variables defined by basis
- classVariablesDo:, enumerates only class variables defined by my basis

I provide hooks to allow subclasses extend view on these items. For example subclasses can show both instance and class sides methods and variables. 
To implement it the following method should be overridden:
- metaLevelsOf: aClass do: aBlock
Each class has two meta levels: instance and class sides. And subclasses decide what meta level is visible from their own point of view. By default given class itself is actual visible meta level.

To extend the visible set of classes mehtod  #classesDo: can be overridden. For example subclasses can provide view on superclass or subclass methods 