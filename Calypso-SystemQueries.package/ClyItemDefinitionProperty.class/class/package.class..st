instance creation
package: aPackage class: aClass
	
	^self new 
		definingClass: aClass instanceSide;
		isInstanceSide: aClass isInstanceSide;
		definingPackage: aPackage