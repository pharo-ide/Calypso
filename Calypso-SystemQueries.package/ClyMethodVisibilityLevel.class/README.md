I am a root of hierarchy of different kind of method visibilities.
Instances are created with currently visible class scope and extra scope which can be activated.

Activation/decactivation methods returns new scope which represent result method visibility: 

- activateExtraScope 
- deactivateExtraScope 

My instances are used by browser to switch method visibility of inherited classes. They use simple method #toggleScope which also returns result method scope.
To represent current state of visible scope I compute #isActive flag:
If any of classes from extra scope is included in the visible scope then my instance is considered active

My instances are created on currently visible class scope. And subclasses create extra scope according to their logic.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	visibleClassScope:		<ClyClassScope>
	extraClassScope:		<ClyAbstractClassScope>
	isActive:		<Boolean>
	


    Implementation Points