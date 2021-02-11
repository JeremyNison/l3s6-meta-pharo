Class {
	#name : #TestCountingInterpreter,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #ASTVisitor
}

{ #category : #tests }
TestCountingInterpreter >> testMessageCount [
	| ast counting |
	ast := RBParser parseMethod: (Point >> #sideOf:) sourceCode.
	counting := CountingInterpreter new.
	ast acceptVisitor: counting.
	self assert: counting numberOfMessages equals: 4.
]
