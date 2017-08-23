//
//  ViewController.swift
//  ShesRight
//
//  Created by Raleigh Green on 7/17/17.
//  Copyright © 2017 Raleigh Green. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet var labelHider: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "MamasRight", ofType: "m4a")!))
            // when view loads, play sound right away!
            playSound()
        }
        catch {
            print(error)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    // make status bar light style
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    @IBAction func Play(_ sender: Any) {
        // when the screen (button) is clicked, play the sound
        playSound()
        // and animate the lable fadeout
        UIView.animate(withDuration: 0.3) {
            self.labelHider.alpha = 0
        }
    }
    
    @IBAction func showModal(_ sender: Any) {
    }
    func playSound(){
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
}

