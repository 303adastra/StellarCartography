Class {
	#name : #Planet,
	#superclass : #Object,
	#instVars : [
		'hp',
		'ha'
	],
	#category : #StellarCartography
}

{ #category : #accessing }
Planet class >> rotationPeriod [
	^ self subclassResponsibility
]
