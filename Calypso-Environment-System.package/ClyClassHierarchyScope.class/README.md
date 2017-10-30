I represent scope of abstract hierarchy of classes.
My subclasses define concrete kind of hierarchy: subclass relationship, traits, trait users, etc. They implement two methods:
- childrenOf:do:
- parentsOf:do: (empty by default)

My actual classes are hierarchy of each basis object

Internal Representation and Key Implementation Points.

    Instance Variables
	metaLevelScope:		<ClyClassScope class>