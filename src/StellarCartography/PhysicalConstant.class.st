Class {
	#name : #PhysicalConstant,
	#superclass : #Magnitude,
	#category : #StellarCartography
}

{ #category : #'as yet unclassified' }
PhysicalConstant class >> gravitational [

	^ 6.6743015e-11 cubicmeters / (1 kilogram * (1 second raisedTo: 2))
]
