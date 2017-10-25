instance creation
package: aPackage class: aClass
	
	^(super package: aPackage class: aClass)
		isInstanceSide: aClass isInstanceSide;
		isExtension: aClass package ~~ aPackage