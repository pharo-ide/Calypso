*Calypso-Environment-System
affectsMethodsDefinedInClass: aClass

	^(package definesClass: aClass)
		or: [ package extendsClass: aClass ]