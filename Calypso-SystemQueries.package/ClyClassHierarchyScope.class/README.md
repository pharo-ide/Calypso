I represent scope of abstract hierarchy of classes.
My subclasses define concrete kind of hierarchy: superclasses, subclasses, inherited traits, trait users, etc. They implement single method:
- classesRelatedTo:do:
Subclasses provide view on hierarchy of each basis object.

My varable metaLevelScope specifies what part of class itself of visible. It can be instance side, class side or both with corresponsing variable value: ClyInstanceSideScope, ClyClassSideScope and ClyLocalClassScope.

Internal Representation and Key Implementation Points.

    Instance Variables
	metaLevelScope:		<ClyClassScope class>