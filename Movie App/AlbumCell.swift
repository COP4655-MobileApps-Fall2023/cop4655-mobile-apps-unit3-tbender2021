//
//  AlbumCell.swift
//  lab-tunley
//
//  Created by student on 9/16/23.
//

import UIKit
import Nuke

class AlbumCell: UICollectionViewCell {
    
    @IBOutlet weak var posterImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        Nuke.loadImage(with: track.poster_path, into: posterImage)
    }
    
}
