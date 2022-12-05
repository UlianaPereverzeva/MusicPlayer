//
//  TrackViewController.swift
//  MusicPlayer
//
//  Created by ульяна on 3.12.22.
//

import UIKit
import AVKit


class TrackViewController: UIViewController {
    
    var track: Track?
    var playerViewController: AVPlayerViewController?
    
    @IBOutlet weak var imageOfSong: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? AVPlayerViewController {
            playerViewController = vc
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        navigationItem.title = track?.name
        imageOfSong.image = UIImage(named: track?.name ?? "")
        
        guard let url = Bundle.main.url(forResource: track?.name, withExtension: track?.ext) else { return }
        let player = AVPlayer(url: url)
        playerViewController?.player = player
        
        setupButton()
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        playerViewController?.player?.play()
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        playerViewController?.player?.pause()
    }
    
    private func setupButton() {
        playButton.layer.cornerRadius = 44
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
