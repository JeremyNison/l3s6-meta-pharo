Class {
	#name : #TestCountingInterpreterInstanceVariable,
	#superclass : #TestCase,
	#instVars : [
		'count'
	],
	#category : #ASTVisitor
}

{ #category : #tests }
TestCountingInterpreterInstanceVariable >> testInstanceVariableCount [
	| ast counting |   
	ast := RBParser parseMethod: (Point >> #sideOf:) sourceCode.  
	counting := CountingManualInterpreterInstanceVariable new.  
	ast acceptVisitor: counting.  
	self assert: counting numberOfInstanceVariable equals: 1
]
