Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #Counter
}

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
	self assert: ((Counter withValue: 19) increment; count) = 20
]

{ #category : #tests }
CounterTest >> testCounter [

	| counter |
	counter := Counter new.
	counter count: 5.
	self assert: counter count equals: 5
]

{ #category : #tests }
CounterTest >> testDecrement [
	| counter |
	counter := Counter new.
	counter count: 2.
	counter decrement.
	counter decrement.
	self assert: counter count equals: 0
]

{ #category : #tests }
CounterTest >> testIncrement [
	| counter |
	counter := Counter new.
	counter count: 0.
	counter increment.
	counter increment.
	self assert: counter count equals: 2
]

{ #category : #tests }
CounterTest >> testValueAtCreationTimeIsZero [
	self assert: Counter new count equals: 0
]
