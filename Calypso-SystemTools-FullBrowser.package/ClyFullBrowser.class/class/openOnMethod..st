opening
openOnMethod: aMethod

	^self openWithState: [:browser | browser selectMethod: aMethod]