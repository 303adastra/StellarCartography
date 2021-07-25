Class {
	#name : #Sun,
	#superclass : #Star,
	#category : #StellarCartography
}

{ #category : #'as yet unclassified' }
Sun class >> mass [

	"returns the mass of the sun as a Mass object"

	^ 1.98847e30 kilograms
]

{ #category : #'as yet unclassified' }
Sun >> mass [

	^ self class mass
]
