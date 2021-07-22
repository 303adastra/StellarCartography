"
I represent a distance quantity.

My main responsibility is storing a distance value in the SI unit, meters. I can perform arithmetic operations on a Distance object, such as adding/subtracting distances, as well as multiplying/dividing a distance by an integer or float. (WIP) I know how to convert between units of distance, such as parsecs, kilometers, & AU. (WIP) I also know how to perform arithmetic operations with non-distance quantities, such as dividing by a duration to create a quantity representing velocity.

Public API and Key Messages

- meters
- asParsecs. ""coming soon""
- asKilometers. ""coming soon""

   2 meters. ""creates a Distance object representing a distance of 2 meters""

Internal Representation and Key Implementation Points.

    Instance Variables
	meters:		<Object>


    Implementation Points
   Distance class is currently a subclass of Magnitude. A future implementation may refactor the parent class to be a Quantity class for handling multiplicity or division between instances of its subclasses, e.g., the binary operation, aDistance / aDuration, should create a Quantity object representing velocity.
"
Class {
	#name : #Distance,
	#superclass : #Magnitude,
	#instVars : [
		'meters'
	],
	#category : #StellarCartography
}

{ #category : #arithmetic }
Distance >> * anInteger [

	meters := self meters * anInteger.
	^ self
]

{ #category : #arithmetic }
Distance >> + aDistance [

	^ Distance new meters: self meters + aDistance meters
]

{ #category : #arithmetic }
Distance >> - aDistance [

	^ Distance new meters: self meters - aDistance meters
]

{ #category : #arithmetic }
Distance >> / anInteger [

	meters := self meters / anInteger.
	^ self
]

{ #category : #comparing }
Distance >> = aMagnitude [ 
	"Compare the receiver with the argument and answer with true if the 
	receiver is equal to the argument. Otherwise answer false."

	^ self meters = aMagnitude meters
]

{ #category : #accessing }
Distance >> meters [
	^ meters
]

{ #category : #'as yet unclassified' }
Distance >> meters: anInteger [ 
	meters := anInteger 
]
