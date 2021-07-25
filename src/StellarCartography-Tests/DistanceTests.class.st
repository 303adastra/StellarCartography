Class {
	#name : #DistanceTests,
	#superclass : #TestCase,
	#category : #'StellarCartography-Tests'
}

{ #category : #tests }
DistanceTests >> testAddingDistance [

	self assert: -8.8e26 meters + 8.8e26 meters equals: 0 meters.
	self assert: 8e-35 meters + 8.2e-35 meters equals: 1.62e-34 meters.
	self assert: 21 meters + 21 meters equals: 42 meters.
	self assert: 4.2e26 meters + 4.6e26 meters equals: 8.8e26 meters
]

{ #category : #tests }
DistanceTests >> testDistanceEvaluatesToItself [

	self assert: -8.8e26 meters equals: -8.8e26 meters.
	self assert: -1.62e-34 meters equals: -1.62e-34 meters.
	self assert: 1.62e-34 meters equals: 1.62e-34 meters.
	self assert: 1 meter equals: 1 meter.
	self assert: 42 meters equals: 42 meters.
	self assert: 8.8e26 meters equals: 8.8e26 meters
]

{ #category : #tests }
DistanceTests >> testDividedByInteger [

	self assert: -8.8e26 meters / 2 equals: -4.4e26 meters.
	self assert: -3.24e-34 meters / 2 equals: -1.62e-34 meters.
	self assert: 3.24e-34 meters / 2 equals: 1.62e-34 meters.
	self assert: 2 meters / 2 equals: 1 meter.
	self assert: 42 meters / 2 equals: 21 meter.
	self assert: 8.8e26 meters / 2 equals: 4.4e26 meters
]

{ #category : #tests }
DistanceTests >> testKilometers [

	self assert: 1000 meter equals: 1 kilometer.
	self assert: 1000 meters equals: 1 kilometers.
	self assert: 2000.0 meter equals: 2.0 kilometer.
	self assert: 2000.0 meters equals: 2.0 kilometers
]

{ #category : #tests }
DistanceTests >> testMillimeters [

	self assert: 1000 millimeter equals: 1 meter.
	self assert: 1000 millimeters equals: 1 meters.
	self assert: 2000.0 millimeter equals: 2.0 meter.
	self assert: 2000.0 millimeters equals: 2.0 meters
]

{ #category : #tests }
DistanceTests >> testMultipliedByInteger [

	self assert: -4.4e26 meters * 2 equals: -8.8e26 meters.
	self assert: -1.62e-34 meters * 2 equals: -3.24e-34 meters.
	self assert: 1.62e-34 meters * 2 equals: 3.24e-34 meters.
	self assert: 2 meters * 2 equals: 4 meter.
	self assert: 21 meters * 2 equals: 42 meters.
	self assert: 4.4e26 meters * 2 equals: 8.8e26 meters
]

{ #category : #tests }
DistanceTests >> testOneMeterEvaluatesToOneMeter [

	self assert: 1 meter equals: 1 meter
]

{ #category : #tests }
DistanceTests >> testRaisedTo [

	self assert: (2 meters raisedTo: 3) equals: (Quantity new
			 value: 8
			 units: (Dictionary newFrom: { ('meters' -> 3) }))
]

{ #category : #tests }
DistanceTests >> testSubtractingDistance [

	self assert: -4.2e26 meters - 4.6e26 meters equals: -8.8e26 meters.
	self assert: -8e-35 meters - 8.2e-35 meters equals: -1.62e-34 meters.
	self assert: 8.8e26 meters - 8.8e26 meters equals: 0 meters.
	self assert: 21 meters + 21 meters equals: 42 meters
]
