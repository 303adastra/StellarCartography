Class {
	#name : #Planet,
	#superclass : #Object,
	#category : #StellarCartography
}

{ #category : #accesing }
Planet class >> rotationPeriod [
	^ self subclassResponsibility
]

{ #category : #accesing }
Planet >> rotationPeriod [
	^ self class rotationPeriod 
]
