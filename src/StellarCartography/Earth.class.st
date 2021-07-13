Class {
	#name : #Earth,
	#superclass : #Planet,
	#category : #StellarCartography
}

{ #category : #accesing }
Earth class >> rotationPeriod [
	"returns the Earth's rotation period as a duration"

	^ 23 hours + 56 minutes + 4 seconds
]

{ #category : #accesing }
Earth >> rotationPeriod [
	^ self class rotationPeriod
]
