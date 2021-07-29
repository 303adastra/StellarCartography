Class {
	#name : #Earth,
	#superclass : #Planet,
	#category : #StellarCartography
}

{ #category : #'as yet unclassified' }
Earth class >> orbitalPeriod [

	"Earth's sidereal period around the Sun, based on astrometric observations"

	^ 365.25636 days
]

{ #category : #'as yet unclassified' }
Earth class >> primary [

	^ Sun
]

{ #category : #accessing }
Earth class >> rotationPeriod [
	"returns the Earth's rotation period as a duration"

	^ 23 hours + 56 minutes + 4 seconds
]

{ #category : #'as yet unclassified' }
Earth class >> semimajorAxis [

	^ 149.60e6 kilometers
]

{ #category : #'as yet unclassified' }
Earth >> orbitalPeriod [

	^ self class orbitalPeriod
]

{ #category : #'as yet unclassified' }
Earth >> primary [

	^ self class primary
]

{ #category : #accessing }
Earth >> rotationPeriod [

	^ self class rotationPeriod
]

{ #category : #'as yet unclassified' }
Earth >> semimajorAxis [

	^ self class semimajorAxis
]
