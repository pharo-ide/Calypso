opening
openOnPackage: aPackage

	^self openWithState: [:browser | browser selectPackage: aPackage]