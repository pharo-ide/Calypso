I am a root of hierarchy of builders which create hierarchy of method groups.
My subclasses are used by special kind of method groups to build subgroups in appropriate hierarchical form.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	classParentsMap:		<Dictionary>
	depth:		<Number>
	extractedRoots:		<Set>
	items:		<OrderedCollection>
	processedClasses:		<Set>
	rootClasses:		<Set>