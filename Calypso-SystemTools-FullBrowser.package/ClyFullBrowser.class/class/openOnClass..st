opening
openOnClass: aClass

	^self openWithState: [:browser | browser selectClass: aClass]