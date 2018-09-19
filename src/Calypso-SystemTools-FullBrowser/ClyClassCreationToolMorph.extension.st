Extension { #name : #ClyClassCreationToolMorph }

{ #category : #'*Calypso-SystemTools-FullBrowser' }
ClyClassCreationToolMorph class >> fullBrowserClassGroupActivation [
	<classAnnotation>
	
	^ClyTabActivationStrategy for: ClyClassGroupContextOfFullBrowser
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
ClyClassCreationToolMorph class >> fullBrowserManagedPackageActivation [
	<classAnnotation>
	
	^ClyTabActivationStrategy for: ClyManagedPackage asCalypsoItemContext 
]

{ #category : #'*Calypso-SystemTools-FullBrowser' }
ClyClassCreationToolMorph class >> fullBrowserPackageActivation [
	<classAnnotation>
	
	^ClyTabActivationStrategy for: ClyPackageContextOfFullBrowser
]
