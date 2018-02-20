I represent the package which is managed by concrete package system.
Calypso provides infrastructure for various package management systems. 
Each system should implement subclass of ClyPackageManager which returns my instances created over system packages:

	ClyManagerPackage for: aRPackage managedBy: aPackageManager

Currently there is only Cargo implementation. But in future we can also provide Metacello support.

So I was introduced for project mode in the browser.
	
Internal Representation and Key Implementation Points.

    Instance Variables
	manager:		<ClyPackageManager>
	systemPackage:		<RPackage>