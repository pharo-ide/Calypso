*Calypso-SystemQueries
affectsMethodsDefinedInClass: aClass

	^(package definesClass: aClass)
		or: [ package extendsClass: aClass ]