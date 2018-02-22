I am a root of commands hierarchy which are supposed to show implementors of selected methods in local class scope of these methods.
My subclasses should define what exact local scope they allow to browse. They should implement following method:

- createInheritanceScopeFrom: classes 

It should return parcicular class scope instance.
Also my subclasses can define default selection in spawned query browser. They should override method:

- selectMethodsIn: aQueryBrowser

My instance should be created on method selection and browser.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	browser:		<ClyBrowser>