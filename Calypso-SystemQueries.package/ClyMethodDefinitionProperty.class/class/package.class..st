instance creation
package: aPackage class: aClass
	
	^(super package: aPackage class: aClass)
		isExtension: aClass package ~~ aPackage