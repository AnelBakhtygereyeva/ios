//
//  ViewController.swift
//  TableViewFavItems
//
//  Created by anel bakhtygereyeva on 14.11.2025.
//

import UIKit

class FavoritesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var data: [[FavoriteItem]] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupData() {
        let movies = [
            FavoriteItem(title: "9", subtitle: "2009; Directed by Tim Burton,Timur Bekmambetov", review: "A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for 16 years old movie it is still good!.", image: UIImage(imageLiteralResourceName: "movie_9")),
            FavoriteItem(title: "Interstellar", subtitle: "2014; Directed by Christopher Nolan", review: "It was one of the best movies I've ever seen. The plot, the actors and the whole animation are just amazing. It seemed so real and unexpected at the same time. It is Nolan, no questions needed :).", image: UIImage(imageLiteralResourceName: "interstellar")),
            FavoriteItem(title: "Spirited Away", subtitle: "2011; Directed by Hayao Miyazaki", review: "One of the best animated movies of all time. The story itself, the moral and the final was perfect. After 24 years it is still seems like new, because the animation is unbelievably good, and that's because it's Miyazaki's masterpiece!", image: UIImage(imageLiteralResourceName: "spirited_away")),
            FavoriteItem(title: "Big Hero 6", subtitle: "2014; Directed by Don Hall and Chris Williams", review: "The first look for a real tech world. It caused my interest to learn more about it and one of the small reason why I became an IT engineer! xd", image: UIImage(imageLiteralResourceName: "big_hero")),
            FavoriteItem(title: "Maze Runner", subtitle: "2014; Directed by Wes Ball", review: "The best dystopian science movie of all time. Sequel of this movies are good even in 10th time watching it.", image: UIImage(imageLiteralResourceName: "maze_runner")),
        ]
        
        let music = [
            FavoriteItem(title: "Best Part", subtitle: "Daniel Caesar featuring H.E.R", review: "Many great memories are linked to this song. The lyrics are great, Daniel Ceaser in general makes good music!", image: UIImage(imageLiteralResourceName: "best_part")),
            FavoriteItem(title: "Stressed Out", subtitle: "twenty one pilots", review: "Classic, my childhood. The one song that bonded us with my brother. It never will get annoying. Also the first song I learned when studying English on my own.", image: UIImage(imageLiteralResourceName: "stressed_out")),
            FavoriteItem(title: "Lost", subtitle: "Frank Ocean", review: "Well, it's Frank Ocean, he is genius. It changes the mood faster than memes on tiktok. The instrumental is also great", image: UIImage(imageLiteralResourceName: "frank_ocean")),
            FavoriteItem(title: "Black Swan", subtitle: "Bts", review: "The perfect instrumentals in a modern song. Even in orchestra they play this masterpiece. The music video and choreo were even better. Just perfection of music in recent years.", image: UIImage(imageLiteralResourceName: "black_swan")),
            FavoriteItem(title: "Cherry Hill", subtitle: "Russ", review: "Underrated song of all. Reminds me of my brother. Russ makes good rnb music, and has several great albums full of unknown music to the majority. Hidden gold", image: UIImage(imageLiteralResourceName: "cherry_hill")),
        ]
        
        let books = [
            FavoriteItem(title: "Alchemist", subtitle: "1988; Paulo Coelho", review: "The first interesting plot i read in the books. Even though the book is not big enough, the meaning is deeper than the ocean. By rereading you can learn even more in jsut 200+ pages.", image: UIImage(imageLiteralResourceName: "alchemist")),
            FavoriteItem(title: "Les Miserables", subtitle: "1862, Victor Hugo", review: "A great story of several people in the years of war. The book is 2000+ pages, but for 14 years old of me it was just good. The Hugo's writing is 2-ways. Interesting and too long in certain ways.", image: UIImage(imageLiteralResourceName: "miserables")),
            FavoriteItem(title: "Arch of Triumph ", subtitle: "1945; Erich Maria Remarque", review: "The story of Ravic, a surgeon, who was ghost-opearing in the years of war. Alongwise there is his love story which is without any colors added, just real life and real situations in one story.", image: UIImage(imageLiteralResourceName: "remark")),
            FavoriteItem(title: "Pride and Prejudice", subtitle: "1813; Jane Austen", review: "A classic novel by Jane Austen, which has been turned into movie several times and get viral. Perfect story in a great writing style. Good for an evening read.", image: UIImage(imageLiteralResourceName: "jane_austen")),
            FavoriteItem(title: "The little prince", subtitle: "1943; Antoine de Saint-Exupéry", review: "A short novella with such a good moral of the story. It will suit as a nighttime reading story to childrean or a whole masterpiece for an adult reader. Everyone will get what they need in this book.", image: UIImage(imageLiteralResourceName: "little_prince")),
        ]
        
        let courses = [
            FavoriteItem(title: "PP2", subtitle: "Principles of Programming 2", review: "It was the first year of our study, and we got into game jam hackaton and made several games. Unforgettable memories and knowledge from this years.", image: UIImage(imageLiteralResourceName: "python")),
            FavoriteItem(title: "IOS development", subtitle: "Mobile app development", review: "My own choice. I was waiting for this semester to only pick this course and continue my future journey based on it. I see great future with some cool projects!!", image: UIImage(imageLiteralResourceName: "swift")),
            FavoriteItem(title: "Calculus", subtitle: "Advanced math course", review: "Math is math, and I love math. The teacher were amazing, so the course in general went so smooth and I learned more than I thought I will", image: UIImage(imageLiteralResourceName: "calculus")),
            FavoriteItem(title: "English", subtitle: "Enhancing our english level further", review: "One of the scariest lesson that everyone thought. But it was one of the best courses I had. Because it helped me to develop my soft skills more, and I met my best friends whom I love till this day. So grateful to have this course!", image: UIImage(imageLiteralResourceName: "english")),
            FavoriteItem(title: "Computer Networks", subtitle: "Networking system and configurations", review: "Fixed my own wifi after the course!!! I liked the part when we worked on real devices and had experiences with some real tech world a little, Learned a lot about networking system.", image: UIImage(imageLiteralResourceName: "networks"))
        ]
        
        data = [movies, music, books, courses]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return FavoriteSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return FavoriteSection(rawValue: section)?.title
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as? FavoriteItemCell else { fatalError("Cell not registered or wrong class") }
        let item = data[indexPath.section][indexPath.row]
        cell.configure(with: item)
        return cell
        
    }

}

