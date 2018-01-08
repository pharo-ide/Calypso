item decoration
decorateBrowserItem: anItem ofPackage: aPackage

	| workingCopy |

	workingCopy := aPackage mcWorkingCopy.
	workingCopy ifNil: [ ^self ].
	
	workingCopy modified ifTrue: [
		anItem markWith: ClyDirtyPackageTag].