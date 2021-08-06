Class {
	#name : #SCPlanet,
	#superclass : #Object,
	#instVars : [
		'hp',
		'ha'
	],
	#category : #StellarCartography
}

{ #category : #accessing }
SCPlanet class >> rotationPeriod [
	^ self subclassResponsibility
]
