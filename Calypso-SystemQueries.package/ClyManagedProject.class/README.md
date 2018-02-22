I represent the project which is managed by concrete package system.
Calypso provides infrastructure for various package management systems. 
Each system should implement subclass of ClyPackageManager which returns my instances created over projects in that system:

	ClyManagerProject for: aConcreteSystemProject named: aString managedBy: aPackageManager

Currently there is only Cargo implementation. But in future we can also provide Metacello support.

So I was introduced for project mode in the browser.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	manager:		<ClyPackageManager>
	name:		<String>
	project:		<Object>