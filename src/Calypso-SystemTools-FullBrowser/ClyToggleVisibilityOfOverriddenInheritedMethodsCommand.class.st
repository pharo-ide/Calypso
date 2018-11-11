Class {
	#name : #ClyToggleVisibilityOfOverriddenInheritedMethodsCommand,
	#superclass : #ClyBrowserCommand,
	#category : #'Calypso-SystemTools-FullBrowser-Commands-MethodGroups'
}

{ #category : #activation }
ClyToggleVisibilityOfOverriddenInheritedMethodsCommand class >> browserContextMenuActivation [
	<classAnnotation>
	
	^CmdContextMenuActivation byItemOf: ClyQueryMenuGroup order: 10000 for: ClyMethodContextOfFullBrowser
]

{ #category : #activation }
ClyToggleVisibilityOfOverriddenInheritedMethodsCommand class >> canBeExecutedInContext: aBrowserContext [
	super canBeExecutedInContext: aBrowserContext.
	
	^aBrowserContext browser isMethodVisibilityIncreased 
]

{ #category : #accessing }
ClyToggleVisibilityOfOverriddenInheritedMethodsCommand >> defaultMenuItemName [ 
	^browser isOverriddenInheritedMethodsVisible 
		ifTrue: [ 'Hide overridden methods' ]
		ifFalse: [ 'Show overridden methods' ]
]

{ #category : #execution }
ClyToggleVisibilityOfOverriddenInheritedMethodsCommand >> execute [
	ClyIncreasedClassScope toggleOverriddenMethodVisibility.
	browser switchOverriddenMethodVisibility
]
