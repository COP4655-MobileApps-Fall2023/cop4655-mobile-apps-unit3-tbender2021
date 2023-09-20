//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!


    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

       //Nuke.loadImage(with: track.poster_path, into: trackImageView)
        titleLabel.text = track.title
        artistLabel.text = track.overview
        albumLabel.text = track.original_language
        genreLabel.text = track.popularity
        Nuke.loadImage(with: track.poster_path, into: trackImageView)

        
        // Use helper method to convert milliseconds into `mm:ss` string format
       // durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }


}
