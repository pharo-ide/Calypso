"
I return all implementors of given selectors
"
Class {
	#name : #ClyMessageImplementorsQuery,
	#superclass : #ClyMessageBasedQuery,
	#category : #'Calypso-SystemQueries-Queries'
}

{ #category : #printing }
ClyMessageImplementorsQuery >> description [

	^'implementors of ', self printSelectors 
]

{ #category : #testing }
ClyMessageImplementorsQuery >> selectsMethod: aMethod [
	^selectors includes: aMethod selector
]
