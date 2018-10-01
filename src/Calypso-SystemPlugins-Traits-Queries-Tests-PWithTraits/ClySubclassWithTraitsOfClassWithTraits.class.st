Class {
	#name : #ClySubclassWithTraitsOfClassWithTraits,
	#superclass : #ClyClassWithTraits,
	#traits : 'ClyTraitChild3',
	#classTraits : 'ClyTraitChild3 classTrait',
	#category : #'Calypso-SystemPlugins-Traits-Queries-Tests-PWithTraits'
}

{ #category : #'as yet unclassified' }
ClySubclassWithTraitsOfClassWithTraits >> localMethodFromSubclass [
]

{ #category : #'as yet unclassified' }
ClySubclassWithTraitsOfClassWithTraits >> methodFromRoot1 [ 
	^#overriddenMethodOfMyTrait
]

{ #category : #'as yet unclassified' }
ClySubclassWithTraitsOfClassWithTraits >> methodFromTraitChild2 [ 
	^#overriddenMethodOfSuperclassTrait
]
