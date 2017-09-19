instance creation
package: aPackage class: aClass
	
	^self new 
		definitionClass: aClass instanceSide;
		isInstanceSide: aClass isInstanceSide;
		definitionPackage: aPackage;
		isExtension: aClass package ~~ aPackage