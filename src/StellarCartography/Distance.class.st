Class {
	#name : #Distance,
	#superclass : #Magnitude,
	#instVars : [
		'meters'
	],
	#category : #StellarCartography
}

{ #category : #arithmetic }
Distance >> * anInteger [

	meters := self meters * anInteger.
	^ self
]

{ #category : #arithmetic }
Distance >> + aDistance [

	^ Distance new meters: self meters + aDistance meters
]

{ #category : #arithmetic }
Distance >> - aDistance [

	^ Distance new meters: self meters - aDistance meters
]

{ #category : #arithmetic }
Distance >> / anInteger [

	meters := self meters / anInteger.
	^ self
]

{ #category : #comparing }
Distance >> = aMagnitude [ 
	"Compare the receiver with the argument and answer with true if the 
	receiver is equal to the argument. Otherwise answer false."

	^ self meters = aMagnitude meters
]

{ #category : #accessing }
Distance >> meters [
	^ meters
]

{ #category : #'as yet unclassified' }
Distance >> meters: anInteger [ 
	meters := anInteger 
]
