//
//  Utils.swift
//  CrazyRoad
//
//  Created by yaron mordechai on 30/04/2020.
//  Copyright © 2020 yaron mordechai. All rights reserved.
//
import Foundation
import SceneKit

struct PhysicsCatagory {
    static let chicken = 1
    static let vehicle = 2
    static let vegetation = 4
    static let collisionTestFront = 8
    static let collisionTestRight = 16
    static let collisionTestLeft = 32
    
}

struct Models {
    
    //Tree
    private static let treeScene = SCNScene(named: "art.scnassets/Tree.scn")!
    static let tree = treeScene.rootNode.childNode(withName: "tree", recursively: true)!
    
    //Hedge
    private static let hedgeScene = SCNScene(named: "art.scnassets/Hedge.scn")!
    static let hedge = hedgeScene.rootNode.childNode(withName: "hedge", recursively: true)!
    
    //Blue truck
    private static let blueTruckScene = SCNScene(named: "art.scnassets/BlueTruck.scn")!
    static let blueTruck = blueTruckScene.rootNode.childNode(withName: "truck", recursively: true)!
    
    //fire truck
    private static let fireTruckScene = SCNScene(named: "art.scnassets/Firetruck.scn")!
    static let fireTruck = fireTruckScene.rootNode.childNode(withName: "truck", recursively: true)!
    
    // Purple Car
    private static let CarScene = SCNScene(named: "art.scnassets/PurpleCar.scn")!
       static let car = CarScene.rootNode.childNode(withName: "car", recursively: true)!
    
    
}


let degressPerRadians = Float(Double.pi/180)
let radiansPerDegrees = Float(180/Double.pi)


func toRadians(angle:Float)->Float{
    return angle * degressPerRadians
}

func toRadians(angle:CGFloat)->CGFloat{
    return angle * CGFloat(radiansPerDegrees)
}
func randomBool(odds:Int) -> Bool{
    
    let random = arc4random_uniform(UInt32(odds))
    
    if random < 1{
        return true

    }
    else{
        return false

    }
    
}
