Class {
	#name : #SCEarth,
	#superclass : #SCPlanet,
	#category : #StellarCartography
}

{ #category : #'as yet unclassified' }
SCEarth class >> primary [

	^ SCSun
]

{ #category : #accessing }
SCEarth class >> rotationPeriod [
	"returns the Earth's rotation period as a duration"

	^ 23 hours + 56 minutes + 4 seconds
]

{ #category : #'as yet unclassified' }
SCEarth class >> semimajorAxis [

	^ 149.60e6 kilometers
]

{ #category : #'as yet unclassified' }
SCEarth >> primary [

	^ self class primary
]

{ #category : #accessing }
SCEarth >> rotationPeriod [

	^ self class rotationPeriod
]

{ #category : #'as yet unclassified' }
SCEarth >> semimajorAxis [

	^ self class semimajorAxis
]
