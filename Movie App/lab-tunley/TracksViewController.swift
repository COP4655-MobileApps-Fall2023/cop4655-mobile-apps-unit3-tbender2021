//
//  ViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/1/22.
//

import UIKit

class TracksViewController: UIViewController, UITableViewDataSource {

    var tracks: [Track] = [Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "Talk to Me",
                                 overview: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.",
                                 popularity: "4755.68",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kdPMUMJzyYAc4roD52qavX0nLIC.jpg")!,
                                 release_date: Date(),
                                 title: "Talk to Me",
                                 video: false,
                                 vote_average: 7.2,
                                 vote_count: 569),
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "Barbie",
                                 overview: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
                                 popularity: "3361.598",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
                                 release_date: Date(),
                                 title: "Barbie",
                                 video: false,
                                 vote_average: 7.3,
                                 vote_count: 4592),
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "Meg 2: The Trench",
                                 overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
                                 popularity: "3361.598",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
                                 release_date: Date(),
                                 title: "Meg 2: The Trench",
                                 video: false,
                                 vote_average: 7,
                                 vote_count: 1773),
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "The Nun II",
                                 overview: "In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.",
                                 popularity: "3361.598",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
                                 release_date: Date(),
                                 title: "THE NUN II",
                                 video: false,
                                 vote_average: 6.6,
                                 vote_count: 1773),
                                 Track(adult: false,
                                       genre_ids:[27,53],
                                       id: 1008042,
                                       original_language: "en",
                                       original_title: "Kandahar",
                                       overview: "After his mission is exposed, an undercover CIA operative stuck deep in hostile territory in Afghanistan must fight his way out, alongside his Afghan translator, to an extraction point in Kandahar, all whilst avoiding elite enemy forces and foreign spies tasked with hunting them down.",
                                       popularity: "2297",
                                       poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lCanGgsqF4xD2WA5NF8PWeT3IXd.jpg")!,
                                       release_date: Date(),
                                       title: "Kandahar",
                                       video: false,
                                       vote_average: 7.8,
                                       vote_count: 1773)
                           ,
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
                                 overview: "After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.",
                                 popularity: "1095",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oupWWrVuCgNEa5GcjdkpjCYbx2X.jpg")!,
                                 release_date: Date(),
                                 title: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
                                 video: false,
                                 vote_average: 7.3,
                                 vote_count: 498)
                           ,
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "Transformers: Rise of the Beasts",
                                 overview: "When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.",
                                 popularity: "1087",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lCanGgsqF4xD2WA5NF8PWeT3IXd.jpghttps://www.themoviedb.org/t/p/w600_and_h900_bestv2/gPbM0MK8CP8A174rmUwGsADNYKD.jpg")!,
                                 release_date: Date(),
                                 title: "Transformers: Rise of the Beasts",
                                 video: false,
                                 vote_average: 7.8,
                                 vote_count: 1773)
                           ,
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "Sound of Freedom",
                                 overview: "The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.",
                                 popularity: "995",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpghttps://www.themoviedb.org/t/p/w600_and_h900_bestv2/kSf9svfL2WrKeuK8W08xeR5lTn8.jpg")!,
                                 release_date: Date(),
                                 title: "Sound of Freedom",
                                 video: false,
                                 vote_average: 8,
                                 vote_count: 450)
                           ,
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "Strays",
                                 overview: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
                                 popularity: "2297",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!,
                                 release_date: Date(),
                                 title: "Strays",
                                 video: false,
                                 vote_average: 7.8,
                                 vote_count: 1773)
                           ,
                           Track(adult: false,
                                 genre_ids:[27,53],
                                 id: 1008042,
                                 original_language: "en",
                                 original_title: "After Everything",
                                 overview: "WBesieged by writer’s block and the crushing breakup with Tessa, Hardin travels to Portugal in search of a woman he wronged in the past – and to find himself. Hoping to win back Tessa, he realizes he needs to change his ways before he can make the ultimate commitment",
                                 popularity: "2297",
                                 poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gZLGCibvFY4zmt8sWUZcbBTHRtk.jpg")!,
                                 release_date: Date(),
                                 title: "After Everything",
                                 video: false,
                                 vote_average: 7.8,
                                 vote_count: 1773),
                          Track( adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "Talk to Me",
                                                        overview: "When a group of friends discover how to conjure spirits using an embalmed hand, they become hooked on the new thrill, until one of them goes too far and unleashes terrifying supernatural forces.",
                                                        popularity: "4755.68",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kdPMUMJzyYAc4roD52qavX0nLIC.jpg")!,
                                                        release_date: Date(),
                                                        title: "Talk to Me",
                                                        video: false,
                                                        vote_average: 7.2,
                                                        vote_count: 569),
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "Barbie",
                                                        overview: "Barbie and Ken are having the time of their lives in the colorful and seemingly perfect world of Barbie Land. However, when they get a chance to go to the real world, they soon discover the joys and perils of living among humans.",
                                                        popularity: "3361.598",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg")!,
                                                        release_date: Date(),
                                                        title: "Barbie",
                                                        video: false,
                                                        vote_average: 7.3,
                                                        vote_count: 4592),
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "Meg 2: The Trench",
                                                        overview: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.",
                                                        popularity: "3361.598",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!,
                                                        release_date: Date(),
                                                        title: "Meg 2: The Trench",
                                                        video: false,
                                                        vote_average: 7,
                                                        vote_count: 1773),
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "The Nun II",
                                                        overview: "In 1956 France, a priest is violently murdered, and Sister Irene begins to investigate. She once again comes face-to-face with a powerful evil.",
                                                        popularity: "3361.598",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpg")!,
                                                        release_date: Date(),
                                                        title: "THE NUN II",
                                                        video: false,
                                                        vote_average: 6.6,
                                                        vote_count: 1773),
                                                        Track(adult: false,
                                                              genre_ids:[27,53],
                                                              id: 1008042,
                                                              original_language: "en",
                                                              original_title: "Kandahar",
                                                              overview: "After his mission is exposed, an undercover CIA operative stuck deep in hostile territory in Afghanistan must fight his way out, alongside his Afghan translator, to an extraction point in Kandahar, all whilst avoiding elite enemy forces and foreign spies tasked with hunting them down.",
                                                              popularity: "2297",
                                                              poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lCanGgsqF4xD2WA5NF8PWeT3IXd.jpg")!,
                                                              release_date: Date(),
                                                              title: "Kandahar",
                                                              video: false,
                                                              vote_average: 7.8,
                                                              vote_count: 1773)
                                                  ,
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
                                                        overview: "After years of being sheltered from the human world, the Turtle brothers set out to win the hearts of New Yorkers and be accepted as normal teenagers through heroic acts. Their new friend April O'Neil helps them take on a mysterious crime syndicate, but they soon get in over their heads when an army of mutants is unleashed upon them.",
                                                        popularity: "1095",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oupWWrVuCgNEa5GcjdkpjCYbx2X.jpg")!,
                                                        release_date: Date(),
                                                        title: "Teenage Mutant Ninja Turtles: Mutant Mayhem",
                                                        video: false,
                                                        vote_average: 7.3,
                                                        vote_count: 498)
                                                  ,
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "Transformers: Rise of the Beasts",
                                                        overview: "When a new threat capable of destroying the entire planet emerges, Optimus Prime and the Autobots must team up with a powerful faction known as the Maximals. With the fate of humanity hanging in the balance, humans Noah and Elena will do whatever it takes to help the Transformers as they engage in the ultimate battle to save Earth.",
                                                        popularity: "1087",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gPbM0MK8CP8A174rmUwGsADNYKD.jpg")!,
                                                        release_date: Date(),
                                                        title: "Transformers: Rise of the Beasts",
                                                        video: false,
                                                        vote_average: 7.8,
                                                        vote_count: 1773)
                                                  ,
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "Sound of Freedom",
                                                        overview: "The story of Tim Ballard, a former US government agent, who quits his job in order to devote his life to rescuing children from global sex traffickers.",
                                                        popularity: "995",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5gzzkR7y3hnY8AD1wXjCnVlHba5.jpghttps://www.themoviedb.org/t/p/w600_and_h900_bestv2/kSf9svfL2WrKeuK8W08xeR5lTn8.jpg")!,
                                                        release_date: Date(),
                                                        title: "Sound of Freedom",
                                                        video: false,
                                                        vote_average: 8,
                                                        vote_count: 450)
                                                  ,
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "Strays",
                                                        overview: "When Reggie is abandoned on the mean city streets by his lowlife owner, Doug, Reggie is certain that his beloved owner would never leave him on purpose. But once Reggie falls in with Bug, a fast-talking, foul-mouthed stray who loves his freedom and believes that owners are for suckers, Reggie finally realizes he was in a toxic relationship and begins to see Doug for the heartless sleazeball that he is.",
                                                        popularity: "2297",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/n1hqbSCtyBAxaXEl1Dj3ipXJAJG.jpg")!,
                                                        release_date: Date(),
                                                        title: "Strays",
                                                        video: false,
                                                        vote_average: 7.8,
                                                        vote_count: 1773)
                                                  ,
                                                  Track(adult: false,
                                                        genre_ids:[27,53],
                                                        id: 1008042,
                                                        original_language: "en",
                                                        original_title: "After Everything",
                                                        overview: "Besieged by writer’s block and the crushing breakup with Tessa, Hardin travels to Portugal in search of a woman he wronged in the past – and to find himself. Hoping to win back Tessa, he realizes he needs to change his ways before he can make the ultimate commitment",
                                                        popularity: "2297",
                                                        poster_path: URL(string:"https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gZLGCibvFY4zmt8sWUZcbBTHRtk.jpg")!,
                                                        release_date: Date(),
                                                        title: "After Everything",
                                                        video: false,
                                                        vote_average: 7.8,
                                                        vote_count: 1773)
                                 
                                 
                           
    ]

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // TODO: Pt 1 - Set tracks property with mock tracks array
        // Create a URL for the request
        // In this case, the custom search URL you created in in part 1
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=e102e0bde31273467454aeae653871e3")!

        // Use the URL to instantiate a request
        let request = URLRequest(url: url)

        // Create a URLSession using a shared instance and call its dataTask method
        // The data task method attempts to retrieve the contents of a URL based on the specified URL.
        // When finished, it calls it's completion handler (closure) passing in optional values for data (the data we want to fetch), response (info about the response like status code) and error (if the request was unsuccessful)
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

            
            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            // We cast the resultant returned object to a dictionary with a `String` key, `Any` value pair.
            do {
                // Create a JSON Decoder
                let decoder = JSONDecoder()

                // Create a date formatter
                let dateFormatter = DateFormatter()

                // Set a custom date format based on what we see coming back in the JSON
                dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

                // Set the decoding strategy on the JSON decoder to use our custom date format
                decoder.dateDecodingStrategy = .formatted(dateFormatter)

                // Use the JSON decoder to try and map the data to our custom model.
                // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                let response = try decoder.decode(TracksResponse.self, from: data)

                // Access the array of tracks from the `results` property
                let tracks = response.results
                
                // Execute UI updates on the main thread when calling from a background callback
                DispatchQueue.main.async {

                    // Set the view controller's tracks property as this is the one the table view references
                    self?.tracks = tracks

                    // Make the table view reload now that we have new data
                    self?.tableView.reloadData()
                }
                print("✅ \(tracks)")
            } catch {
                if let httpResponse = response as? HTTPURLResponse {
                    if httpResponse.statusCode != 200 {
                        print("❌ HTTP status code: \(httpResponse.statusCode)")
                        return
                    }
                }
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
        print(tracks)

        tableView.dataSource = self
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // TODO: Deselect any selected table view rows

        // Get the index path for the current selected table view row (if exists)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deslect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller

        // Get the cell that triggered the segue
        if let cell = sender as? UITableViewCell,
           // Get the index path of the cell from the table view
           let indexPath = tableView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController = segue.destination as? DetailViewController {

            // Use the index path to get the associated track
            let track = tracks[indexPath.row]

            // Set the track on the detail view controller
            detailViewController.track = track
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Get a cell with identifier, "TrackCell"
        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackCell", for: indexPath) as! TrackCell

        // Get the track that corresponds to the table view row
        let track = tracks[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: track)

        // return the cell for display in the table view
        return cell
    }
}
