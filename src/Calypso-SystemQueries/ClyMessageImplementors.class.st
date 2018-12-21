"
I return all implementors of given selectors
"
Class {
	#name : #ClyMessageImplementors,
	#superclass : #ClyMessageBasedQuery,
	#category : #'Calypso-SystemQueries-Queries'
}

{ #category : #printing }
ClyMessageImplementors >> description [

	^'implementors of ', self printSelectors 
]

{ #category : #testing }
ClyMessageImplementors >> selectsMethod: aMethod [

	"is implementor if it is implemented in the same class 
	 that is defined (to exclude trait users)"
	^ (selectors includes: aMethod selector)
		and: [  aMethod origin = aMethod methodClass ]
]
