//
//  CollisionNode.swift
//  CrazyRoad
//
//  Created by yaron mordechai on 06/05/2020.
//  Copyright © 2020 yaron mordechai. All rights reserved.
//

import SceneKit

class CollisionNode: SCNNode {

    let front: SCNNode
    let right: SCNNode
    let left: SCNNode
    
    override init() {
        
        front = SCNNode()
        right = SCNNode()
        left = SCNNode()
        
        super.init()
        createPhysicsBodies()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createPhysicsBodies(){
        
        let boxGeometry = SCNBox(width:0.25 , height: 0.25 , length: 0.25 , chamferRadius: 0)
        boxGeometry.firstMaterial?.diffuse.contents = UIColor.clear
        
        let shape = SCNPhysicsShape(geometry: boxGeometry, options: [SCNPhysicsShape.Option.type: SCNPhysicsShape.ShapeType.boundingBox])
        
        
        front.geometry = boxGeometry
        right.geometry = boxGeometry
        left.geometry = boxGeometry
        
        front.physicsBody = SCNPhysicsBody(type: .kinematic, shape: shape)
        front.physicsBody?.categoryBitMask = PhysicsCatagory.collisionTestFront
        front.physicsBody?.contactTestBitMask = PhysicsCatagory.vegetation
        
        
        right.physicsBody = SCNPhysicsBody(type: .kinematic, shape: shape)
        right.physicsBody?.categoryBitMask = PhysicsCatagory.collisionTestRight
        right.physicsBody?.contactTestBitMask = PhysicsCatagory.vegetation
        
        left.physicsBody = SCNPhysicsBody(type: .kinematic, shape: shape)
        left.physicsBody?.categoryBitMask = PhysicsCatagory.collisionTestLeft
        left.physicsBody?.contactTestBitMask = PhysicsCatagory.vegetation
        
        
        front.position = SCNVector3(x: 0, y: 0.5, z:-1)
        right.position = SCNVector3(x: 1, y: 0.5, z: 0)
        left.position = SCNVector3(x: -1, y: 0.5, z: 0)
        
        addChildNode(front)
        addChildNode(right)
        addChildNode(left)


        

        
        
        
    }
    
    
    
    
}
