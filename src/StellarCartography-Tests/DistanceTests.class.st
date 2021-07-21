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
DistanceTests >> testSubtractingDistance [

	self assert: -4.2e26 meters - 4.6e26 meters equals: -8.8e26 meters.
	self assert: -8e-35 meters - 8.2e-35 meters equals: -1.62e-34 meters.
	self assert: 8.8e26 meters - 8.8e26 meters equals: 0 meters.
	self assert: 21 meters + 21 meters equals: 42 meters
]
