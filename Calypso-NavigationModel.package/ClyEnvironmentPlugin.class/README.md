I am a root of environment plugins hierarchy.
My subclasses extend environment objects and their properties.
They define #resolve.. messages for concrete type of environment objects. These messages are called by scopes which knows exact type of underlying objects.

For example look at ClySystemEnvironmentPlugin subclasses which extend system objects like packages and classes.

To activate plugin it should be added to navigation environment: 
	environment addPlugin: anEnvironmentPlugin 

Default global environments add all plugins automatically. Only plugins marked as auto-activated are used (which is true by default):
	ClyEnvironmentPlugin class>>isAutoActivated
		^true

Some plugins needs to evaluate some code, register on some events when they are activated. For these goal plugins implement two methods:
	- attachToSystem. Here plugin can subscribe on events of some plugin specific service. For example ClySUnitEnvironmentPlugin is subscribed on "TestCase historyAnnouncer" to know when user run tests.
	- detatchFromSystem. It should cleanup environment from itself. For example ClySUnitEnvironmentPlugin is unsubscribed from "TestCase historyAnnouncer" 
 
Internal Representation and Key Implementation Points.

    Instance Variables
	environment:		<ClyNavigationEnvironment>