Extension { #name : #Integer }

{ #category : #'*StellarCartography' }
Integer >> meter [

	^ Distance new meters: self
]

{ #category : #'*StellarCartography' }
Integer >> meters [
	^ Distance new meters: self
]
