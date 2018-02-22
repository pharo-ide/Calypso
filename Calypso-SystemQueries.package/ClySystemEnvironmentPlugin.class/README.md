I am a root of ClySystemEnvironment navigation plugins hierarchy.
My subclasses extend system objects and their properties.

For example there is ClySUnitEnvironmentPlugin. It adds test related properties to methods, classes and packages. Also it provides new kind of method group to represent broken tests.

To extend objects subclasses should implement methods: 
	- resolvePropertiesOfClass: classItem
	- resolvePropertiesOfMethod: methodItem
	- look at "items resolving" protocol for more

Plugins can provide new kind of package, class and method groups. They return own group providers in following methods:
	- collectMethodGroupProviders
	- collectClassGroupProviders
	- collectPackageGroupProvidersFor: aProject

Notice that current image environment adds all plugins automatically. 
Look at superclass ClyEnvironmentPlugin for responsibility details.

For subclasses I provide notion of slow plugins and methods to enable/disable them:

- disableSlowPlugins
- enableSlowPlugins

Any system plugin can implement #isSlow as true. It is important for slow machines (like Raspberry) to be able easily disable all heavy logic in the browser.