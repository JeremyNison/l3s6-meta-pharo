Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTest >> testAddingTwiceTheSameDice [
	| handle |
	handle:= DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testCreationAdding [
	| handle |
	handle:= DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	self assert: handle diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testRoll [
	| h |
	h:= DieHandle new
		addDie: (Die withFaces: 10);
		addDie: (Die withFaces: 10).
	10 timesRepeat: [ self assert: (h roll between: 2 and: 20) ].
]

{ #category : #tests }
DieHandleTest >> testSimpleHandle [
	self assert: 2 D20 diceNumber equals: 2.
]

{ #category : #tests }
DieHandleTest >> testSumming [
	| handle |
	handle:= 2 D20 + 3 D10.
	self assert: handle diceNumber equals: 5.
]
