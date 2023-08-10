//
//  ViewController.swift
//  xylophone
//
//  Created by Farid Hamzayev on 12.07.23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
  var player: AVAudioPlayer!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func keyPressed(_ sender: UIButton) {
    sender.alpha = 0.5
    playSound(soundName: sender.currentTitle!)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
      sender.alpha = 1.0
    }
  }
  
  func playSound(soundName: String) {
    let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
  }
}
