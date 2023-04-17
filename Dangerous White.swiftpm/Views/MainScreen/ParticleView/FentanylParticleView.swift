import SwiftUI
import SpriteKit
import CoreMotion

final class ParticleScene: SKScene {
    private let motionManager = CMMotionManager()
    var sprite: SKSpriteNode!
    var spritesize : Double = 10.0
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      }

    override init(size ssize: CGSize) {
        super.init(size: ssize)

        scaleMode = .fill
        spritesize = ssize.width / 11.2
      }
    
    override func didMove(to view: SKView) {
        motionManager.startAccelerometerUpdates()

        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        run(SKAction.repeat(SKAction.sequence([SKAction.run(AddParticle), SKAction.wait(forDuration: 0.1)]), count: 99))
        
        self.size = view.frame.size
    }
    
    func AddParticle() {
        sprite = SKSpriteNode(imageNamed: "fenparticle")
        sprite.size = CGSize(width: spritesize * 1.2, height: spritesize * 1.2)
        
        sprite.position = CGPoint(
            x:CGFloat(Int(size.width/2)+Int.random(in:-3...3)),
            y: size.height - 10)
        
        sprite.physicsBody = SKPhysicsBody(circleOfRadius: sprite.size.width/3.15)
        
        self.addChild(sprite)
    }
    
    override func update(_ currentTime: TimeInterval) {
        if let accelerometerData = motionManager.accelerometerData {
            physicsWorld.gravity = CGVector(dx: accelerometerData.acceleration.x * 9.8, dy: accelerometerData.acceleration.y * 9.8)
        }
    }
    
}


struct FentanylParticleView: View {
    @State var ParticleCount : Int = 0
    let imgSize : Double
    
    var scene: SKScene {
        let scene = ParticleScene(size : CGSize(width: imgSize, height: imgSize))
        scene.size = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View {
        ZStack{
            BlackBackground()
            SpriteView(scene: scene, debugOptions: [/*.showsFPS, .showsNodeCount*/])
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height/1.8)
        }
                .ignoresSafeArea()
                .navigationViewStyle(StackNavigationViewStyle())
                .navigationBarBackButtonHidden(true)
    }
}
    

struct FentanylParticleView_Previews: PreviewProvider {
    static var previews: some View {
        PencilView(isWhatisFentanyl: .constant(false), isHomeBack: .constant(false))
        FentanylParticleView(imgSize: 100)
    }
}
