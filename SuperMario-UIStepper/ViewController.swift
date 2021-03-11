//
//  ViewController.swift
//  SuperMario-UIStepper
//
//  Created by Jeanyou on 2021/3/8.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var marioStepper: UIStepper!
    @IBOutlet weak var marioNumberLabel: UILabel!
    
    @IBOutlet weak var luigiStepper: UIStepper!
    @IBOutlet weak var luigiNumberLabel: UILabel!
    
    @IBOutlet weak var peachStepper: UIStepper!
    @IBOutlet weak var peachNumberLabel: UILabel!
    
    @IBOutlet weak var yoshiStepper: UIStepper!
    @IBOutlet weak var yoshiNumberLabel: UILabel!
    
    @IBOutlet weak var kinopioStpper: UIStepper!
    @IBOutlet weak var kinopioNumberLabel: UILabel!
    
    @IBOutlet weak var nokonokoStepper: UIStepper!
    @IBOutlet weak var nokonokoNumberLabel: UILabel!
    
    @IBOutlet weak var totalScoreLable: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    
    
    var mario:Int = 0
    var luigi:Int = 0
    var peach:Int = 0
    var yoshi:Int = 0
    var kinopio:Int = 0
    var nokonoko:Int = 0
    var totalScore = 0
    
    func addOn() {
        totalScore = mario*3000 + luigi*2500 + peach*2500 + yoshi*2000 + kinopio*1500 + nokonoko*1500
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func stepperNumberChanged(_ sender: UIStepper) {
        mario = Int(marioStepper.value)
        luigi = Int(luigiStepper.value)
        peach = Int(peachStepper.value)
        yoshi = Int(yoshiStepper.value)
        kinopio = Int(kinopioStpper.value)
        nokonoko = Int(nokonokoStepper.value)
        addOn()
        marioNumberLabel.text = "\(mario)"
        luigiNumberLabel.text = "\(luigi)"
        peachNumberLabel.text = "\(peach)"
        yoshiNumberLabel.text = "\(yoshi)"
        kinopioNumberLabel.text = "\(kinopio)"
        nokonokoNumberLabel.text = "\(nokonoko)"
        totalScoreLable.text = "\(totalScore)"
    }
    
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        marioStepper.value = 0
        luigiStepper.value = 0
        peachStepper.value = 0
        yoshiStepper.value = 0
        kinopioStpper.value = 0
        nokonokoStepper.value = 0
        marioNumberLabel.text = "0"
        luigiNumberLabel.text = "0"
        peachNumberLabel.text = "0"
        yoshiNumberLabel.text = "0"
        kinopioNumberLabel.text = "0"
        nokonokoNumberLabel.text = "0"
        totalScoreLable.text = "0"
    }
    
    

}

