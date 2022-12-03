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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = track?.name
        imageOfSong.image = UIImage(named: track?.name ?? "")
    }
    
    @IBAction func playButton(_ sender: UIButton) {
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
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
