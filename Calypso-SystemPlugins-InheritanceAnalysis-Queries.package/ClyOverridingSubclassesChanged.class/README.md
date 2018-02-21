I represent event when superclass (overriddenSuperclass) of some classes is changed. In that case all subclasses which could override his methods are also changed: their methods should update the "override status".

Read more details in superclass comment.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	overriddenSuperclass:		<Class>
