I am a root of environment plugins hierarchy.
My subclasses extend environment objects and their properties.

For example there is ClySUnitEnvironmentPlugin. It adds test related properties to methods, classes and packages. Also it provide new kind of method group to represent broken tests.
Plugins are supposed to be packaged separately.

To extend objects subclasses should implement methods: 
	- resolvePropertiesOfClass: classItem
	- resolvePropertiesOfMethod: methodItem
	- look at "items resolving" protocol for more

Plugins can provide new kind of class and method groups. They return own group providers in following methods:
	- collectMethodGroupProvidersFor: classes
	- collectClassGroupProvidersFor: aPackage

To activate plugin it should be added to navigation environment: 
	environment addPlugin: anEnvironmentPlugin 
Current image environment adds all plugins automatically. Only plugins marked as auto-activated are used (which is true by default):
	ClyEnvironmentPlugin class>>isAutoActivated
		^true

Some plugins needs to evaluate some code, register on some events when they are activated. For these goal plugins could implement two methods:
	- attachToSystem. Here plugin can subscribe on events of some plugin specific service. For example ClySUnitEnvironmentPlugin is subscribed on "TestCase historyAnnouncer" to know when user run tests.
	- detatchFromSystem. It should cleanup environment from itself. For example ClySUnitEnvironmentPlugin is unsubscribed from "TestCase historyAnnouncer" 
 
Internal Representation and Key Implementation Points.

    Instance Variables
	environment:		<ClyNavigationEnvironment>