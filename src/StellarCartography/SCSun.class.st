Class {
	#name : #SCSun,
	#superclass : #SCStar,
	#category : #StellarCartography
}

{ #category : #'as yet unclassified' }
SCSun class >> mass [

	"returns the mass of the sun as a Mass object"

	^ 1.98847e30 kilograms
]

{ #category : #'as yet unclassified' }
SCSun >> mass [

	^ self class mass
]
