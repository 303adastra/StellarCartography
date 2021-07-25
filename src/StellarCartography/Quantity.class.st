"
I represent a quantity.

My main responsibility is storing a value in SI units. I can perform arithmetic operations, such as multiplying or dividing a quantity by an integer, float, or another quantity.

Public API and Key Messages

- value ""Returns the numeric value of the quantity""   
- units ""Returns a dictionary of the quantity's units.  Key = SI unit.  Value = exponent value of SI unit.""

   6.674e-11 cubicmeters / (1 kilogram * 1 second) ""expresses a quantity equal to the gravitational constant""
 
Internal Representation and Key Implementation Points.

    Instance Variables
	units:		<Object>
	value:		<Object>


    Implementation Points
	Quantity objects are created by passing unary messages to Integer or Float objects.
"
Class {
	#name : #Quantity,
	#superclass : #Magnitude,
	#instVars : [
		'value',
		'units'
	],
	#category : #StellarCartography
}

{ #category : #arithmetic }
Quantity >> * anOperand [

	| aQuantity newUnits unitKeys |
	"Temporarily treat operand as a Quantity"
	aQuantity := anOperand.

	"Convert operand to Quantity, if it's a Duration"
	(anOperand respondsTo: #asMinutes) ifTrue: [ 
		aQuantity := self class new
			             value: anOperand seconds
			             units: (Dictionary newFrom: { ('seconds' -> 1) }) ].

	"Create new Quantity, if operand has units"
	(aQuantity respondsTo: #units) ifTrue: [ 
		newUnits := Dictionary newFrom: {  }.
		unitKeys := Set withAll: units keys , aQuantity units keys.
		unitKeys do: [ :key | 
			newUnits
				at: key
				put:
				(units at: key ifAbsent: 0)
				+ (aQuantity units at: key ifAbsent: 0) ].
		newUnits = (Dictionary newFrom: { 
				 ('kilograms' -> 0).
				 ('meters' -> 0).
				 ('seconds' -> 1).
				 ('amperes' -> 0).
				 ('candelas' -> 0).
				 ('kelvin' -> 0).
				 ('moles' -> 0) }) ifTrue: [ ^ (value * aQuantity value) seconds ].
		^ self class new value: value * aQuantity value units: newUnits ].

	"Otherwise, treat operand as a Number"
	^ self class new value: value * anOperand units: units
]

{ #category : #arithmetic }
Quantity >> + aQuantity [

	units = aQuantity units
		ifTrue: [ 
		^ Quantity new value: value + aQuantity value units: units ]
		ifFalse: [ 
		self error: 'adding Quantity objects must have the same units' ]
]

{ #category : #arithmetic }
Quantity >> - aQuantity [

	units = aQuantity units
		ifTrue: [ 
		^ Quantity new value: value - aQuantity value units: units ]
		ifFalse: [ 
		self error: 'adding Quantity objects must have the same units' ]
]

{ #category : #arithmetic }
Quantity >> / anOperand [

	| aQuantity newUnits unitKeys |
	"Temporarily treat operand as a Quantity"
	aQuantity := anOperand.

	"Convert operand to Quantity, if it's a Duration"
	(anOperand respondsTo: #asMinutes) ifTrue: [ 
		aQuantity := self class new
			             value: anOperand seconds
			             units: (Dictionary newFrom: { ('seconds' -> 1) }) ].

	"Create new Quantity, if operand has units"
	(aQuantity respondsTo: #units) ifTrue: [ 
		newUnits := Dictionary newFrom: {  }.
		unitKeys := Set withAll: units keys , aQuantity units keys.
		unitKeys do: [ :key | 
			newUnits
				at: key
				put:
				(units at: key ifAbsent: 0)
				- (aQuantity units at: key ifAbsent: 0) ].
		newUnits = (Dictionary newFrom: { 
				 ('kilograms' -> 0).
				 ('meters' -> 0).
				 ('seconds' -> 1).
				 ('amperes' -> 0).
				 ('candelas' -> 0).
				 ('kelvin' -> 0).
				 ('moles' -> 0) }) ifTrue: [ ^ (value * aQuantity value) seconds ].
		^ self class new value: value / aQuantity value units: newUnits ].

	"Otherwise, treat operand as a Number"
	^ self class new value: value / anOperand units: units
]

{ #category : #comparing }
Quantity >> = aQuantity [

	"Compare the receiver with the argument and answer with true if the 
	receiver is equal to the argument. Otherwise answer false."

	^ self value = aQuantity value & (self units = aQuantity units)
]

{ #category : #initialization }
Quantity >> initialize [

	"Initialize new instance of Quantity with dictionary of the seven SI base units"

	units := Dictionary newFrom: { 
			         ('seconds' -> 0).
			         ('meters' -> 0).
			         ('kilograms' -> 0).
			         ('amperes' -> 0).
			         ('kelvin' -> 0).
			         ('moles' -> 0).
			         ('candelas' -> 0) }
]

{ #category : #'mathematical functions' }
Quantity >> raisedTo: aNumber [

	| newUnits unitKeys newQuantity |
	newUnits := Dictionary newFrom: {  }.
	unitKeys := Set withAll: units keys.
	unitKeys do: [ :key | 
		newUnits at: key put: (units at: key ifAbsent: 0) * aNumber ].
	newQuantity := self class new
		               value: (value raisedTo: aNumber)
		               units: newUnits.
	newUnits = (Dictionary newFrom: { 
			 ('kilograms' -> 0).
			 ('meters' -> 0).
			 ('seconds' -> 1).
			 ('amperes' -> 0).
			 ('candelas' -> 0).
			 ('kelvin' -> 0).
			 ('moles' -> 0) }) ifTrue: [ ^ newQuantity value seconds ].
	^ newQuantity
]

{ #category : #accessing }
Quantity >> units [

	^ units
]

{ #category : #accessing }
Quantity >> value [

	^ value
]

{ #category : #'as yet unclassified' }
Quantity >> value: aNumber units: aUnitDictionary [

	| newUnits |
	value := aNumber.
	newUnits := units.
	aUnitDictionary keys do: [ :key | 
		units at: key put: (units at: key) + (aUnitDictionary at: key) ]
]
