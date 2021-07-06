Class {
	#name : #Earth,
	#superclass : #Object,
	#category : #StellarCartography
}

{ #category : #'as yet unclassified' }
Earth class >> rotationPeriod [
	"returns the Earth's rotation period as a duration"

	^ 23 hours + 56 minutes + 4 seconds
]
