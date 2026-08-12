Extension { #name : 'OCBlockNode' }

{ #category : '*Calypso-SystemTools-Debugger' }
OCBlockNode >> compiledMethod [
	^ self methodNode compiledMethod
]
