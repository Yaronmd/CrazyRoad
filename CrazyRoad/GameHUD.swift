//
//  GameHUD.swift
//  CrazyRoad
//
//  Created by yaron mordechai on 07/05/2020.
//  Copyright © 2020 yaron mordechai. All rights reserved.
//

import SpriteKit

class GameHUD: SKScene {
    
    var logoLabel: SKLabelNode?
    var tapToPlayLabel: SKLabelNode?
    var pointLabel: SKLabelNode?
    
    init(with size:CGSize , menu:
    Bool){
        super.init(size: size)
        
        if menu{
            addMenuLabels()
        }
        else{
            addPointsLabel()
        }
        
    }
    
    func addMenuLabels(){
        
        logoLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
        tapToPlayLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
        
        guard let logo = logoLabel , let tapToPlay = tapToPlayLabel else {
            return
            }
        logo.text = "Crazy Road"
        logo.fontSize = 35.0
        logo.position = CGPoint(x: frame.midX, y: frame.midY)
        
        addChild(logo)
        
        tapToPlay.text = "Tap To play"
        tapToPlay.fontSize = 25.0
        tapToPlay.position = CGPoint(x: frame.midX, y: frame.midY - logo.frame.height)
        
        addChild(tapToPlay)
    }
    func addPointsLabel(){
        
        pointLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
        
        guard let pointLabel = pointLabel else {
            return
        }
        pointLabel.text = "0"
        pointLabel.fontSize = 40.0
        pointLabel.position = CGPoint(x: frame.minX + pointLabel.frame.size.width, y:frame.maxY - pointLabel.frame.size.height * 2 )
        
        addChild(pointLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
