Class {
	#name : #ClySortProcessByPriorityFunction,
	#superclass : #ClySortFunction,
	#category : 'Calypso-ProcessQueries'
}

{ #category : #evaluating }
ClySortProcessByPriorityFunction >> collate: aProcess1 with: aProcess2 [
	^aProcess1 priority threeWayCompareTo: aProcess2 priority
]
