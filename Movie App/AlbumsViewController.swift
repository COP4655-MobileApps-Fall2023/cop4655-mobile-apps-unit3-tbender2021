//
//  AlbumsViewController.swift
//  lab-tunley
//
//  Created by student on 9/16/23.
//

import UIKit
import UIKit
import Nuke
class AlbumsViewController: UIViewController {


    @IBOutlet weak var collectionView: UITableViewCell!

    @IBOutlet weak var thingone: UIImageView!
    
    @IBOutlet weak var thingfour: UIImageView!
    @IBOutlet weak var thingthree: UIImageView!
    @IBOutlet weak var tingtwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageString1 = "www.themoviedb.org/t/p/w600_and_h900_bestv2/lZ2sOCMCcGaPppaXj0Wiv0S7A08.jpg"
        let imageUrl1 = URL(string:imageString1)!
        Nuke.loadImage(with:imageUrl1,into: thingone)
        
        // Create a search URL for fetching albums (`entity=album`)
        let url = URL(string: "https://itunes.apple.com/search?term=blackpink&attribute=artistTerm&entity=album&media=music")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // Create a JSON Decoder
            let decoder = JSONDecoder()
            do {
                // Try to parse the response into our custom model
                let response = try decoder.decode(AlbumSearchResponse.self, from: data)
                let albums = response.results
                print(albums)
            } catch {
                print(error.localizedDescription)
            }
        }

        // Initiate the network request
        task.resume()    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
