//
//  ViewController.swift
//  Randomizer
//
//  Created by anel bakhtygereyeva on 23.10.2025.
//

import UIKit

struct HobbyItem {
    let title: String
    let imageName: String
    let description: String
    let category: String
    let tools: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var mainStackView: UIImageView!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var attributesLabel: UILabel!
    @IBOutlet weak var randomizeButton: UIButton!
    
    let hobbies: [HobbyItem] = [
        HobbyItem(title: "Coding", imageName: "coding", description: "Building apps for iOS and macOS is always fun and sometimes challenging", category: "Technical", tools: "Laptop, Xcode, coffee ☕"),
        HobbyItem(title: "Reading", imageName: "reading", description: "Exploring new worlds and perspectives of life through books", category: "Intellectual", tools: "Book or Kindle"),
        HobbyItem(title: "Acoustic Guitar", imageName: "guitar", description: "Learning chords and playing my favorite songs is another level of enjoyment", category: "Creative Arts", tools: "Guitar, Picks"),
        HobbyItem(title: "Acrylic Painting", imageName: "acrylicPainting", description: "Expressing creativity with colors and brushes, trying to recreate Van Gogh's works", category: "Visual Arts", tools: "Canvas, Brushes, Acrylic Paints"),
        HobbyItem(title: "Cooking", imageName: "cooking", description: "Experimenting with recipes and preparing meals, everyone loves delicious food", category: "Practical", tools: "Kitchen, Ingredients, Spices"),
        HobbyItem(title: "Video Gaming", imageName: "videoGames", description: "Fun and relaxing digital adventures, good for all ages", category: "Entertainment", tools: "Console, PC, Headset"),
        HobbyItem(title: "Piano Playing", imageName: "piano", description: "Playing melodies and learning music, with your own hands", category: "Creative Arts", tools: "Piano/Keyboard, Sheet Music"),
        HobbyItem(title: "Ukulele Playing", imageName: "ukulele", description: "Playing cheerful songs on a small instrument is always entertaining", category: "Creative Arts", tools: "Ukulele, Tuner"),
        HobbyItem(title: "Drawing Sketches", imageName: "sketching", description: "Capturing ideas or scenes with pencil, creating your own art", category: "Visual Arts", tools: "Sketchbook, Pencils, Eraser"),
        HobbyItem(title: "Rubik's Cube Solving", imageName: "rubiksCube", description: "A puzzle that improves logic and memory, and colorful", category: "Intellectual", tools: "Speed Cube")
    ]
    
    private var lastIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageView.contentMode = .scaleAspectFit
        itemImageView.layer.cornerRadius = 12
        itemImageView.clipsToBounds = true
            
        titleLabel.numberOfLines = 0
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
            
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .byWordWrapping
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = .black
            
        attributesLabel.numberOfLines = 0
        attributesLabel.lineBreakMode = .byWordWrapping
        attributesLabel.textAlignment = .center
        attributesLabel.textColor = .gray
            
        titleLabel.font = UIFont(name: "Menlo-Bold", size: 26)
        descriptionLabel.font = UIFont(name: "Cochin", size: 18)
        attributesLabel.font = UIFont(name: "Menlo-Bold", size: 14)
        
        randomizeButton.setTitle("🎲 Pick a hobby :)", for: .normal)
        randomizeButton.backgroundColor = .systemBlue
        randomizeButton.tintColor = .white
        randomizeButton.layer.cornerRadius = 8
            
        showRandomHobby()
    }
    
    @IBAction func randomizeButtonTapped(_ sender: Any) {
        showRandomHobby()
    }
    
    func showRandomHobby() {
        var randomIndex: Int
        repeat {
            randomIndex = Int.random(in: 0..<hobbies.count)
        } while hobbies.count > 1 && randomIndex == lastIndex
        
        lastIndex = randomIndex
        let hobby = hobbies[randomIndex]
        
        titleLabel.text = hobby.title
        descriptionLabel.text = hobby.description
        attributesLabel.text = "🏷️ Category: \(hobby.category)\n 🧩 Tools: \(hobby.tools)"
        itemImageView.image = UIImage(named: hobby.imageName)
    }
}
