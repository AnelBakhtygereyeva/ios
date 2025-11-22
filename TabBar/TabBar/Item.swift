//
//  Item.swift
//  TabBar
//
//  Created by anel bakhtygereyeva on 22.11.2025.
//

import UIKit
import Foundation

struct Item {
    let title: String
    let imageName: String  
    let description: String
    let review: String
}

let movieItems: [Item] = [
    Item(
        title: "9",
        imageName: "movie_9",
        description: "2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!",
        review: "Interesting!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!"
    ),
    Item(
        title: "Interstellar",
        imageName: "interstellar",
        description: "2014; Directed by Christopher Nolan. The plot, the actors, and the whole animation are just amazing. It seemed so real and unexpected at the same time.",
        review: "It is Nolan, no questions needed :)."
    ),
    Item(
        title: "Spirited Away",
        imageName: "spirited_away",
        description: "2011; Directed by Hayao Miyazaki. One of the best animated movies of all time. The story, moral, and ending are perfect. Even after 24 years, the animation feels fresh.",
        review: "Miyazaki's masterpiece!"
    ),
    Item(
        title: "Big Hero 6",
        imageName: "big_hero",
        description: "2014; Directed by Don Hall and Chris Williams. A glimpse into a real tech world. Inspired me to learn more and contributed to my decision to become an IT engineer.",
        review: "Fun and inspiring!"
    ),
    Item(
        title: "Maze Runner",
        imageName: "maze_runner",
        description: "2014; Directed by Wes Ball. The best dystopian science movie of all time. Sequels are still enjoyable even on the 10th watch.",
        review: "Exciting!"
    ),
    Item(
        title: "9",
        imageName: "movie_9",
        description: "2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!",
        review: "Interesting!2009; Directed by Tim Burton, Timur Bekmambetov. A very old cartoon movie with deep meaning and interesting script. The animation is not the best, but for a 16-year-old movie it is still good!"
    ),
    Item(
        title: "Interstellar",
        imageName: "interstellar",
        description: "2014; Directed by Christopher Nolan. The plot, the actors, and the whole animation are just amazing. It seemed so real and unexpected at the same time.",
        review: "It is Nolan, no questions needed :)."
    ),
    Item(
        title: "Spirited Away",
        imageName: "spirited_away",
        description: "2011; Directed by Hayao Miyazaki. One of the best animated movies of all time. The story, moral, and ending are perfect. Even after 24 years, the animation feels fresh.",
        review: "Miyazaki's masterpiece!"
    ),
    Item(
        title: "Big Hero 6",
        imageName: "big_hero",
        description: "2014; Directed by Don Hall and Chris Williams. A glimpse into a real tech world. Inspired me to learn more and contributed to my decision to become an IT engineer.",
        review: "Fun and inspiring!"
    ),
    Item(
        title: "Maze Runner",
        imageName: "maze_runner",
        description: "2014; Directed by Wes Ball. The best dystopian science movie of all time. Sequels are still enjoyable even on the 10th watch.",
        review: "Exciting!"
    )
]

let musicItems: [Item] = [
    Item(title: "Best Part", imageName: "best_part",
         description: "Daniel Caesar featuring H.E.R — Many great memories are linked to this song. The lyrics are great, Daniel Caesar in general makes good music!",
         review: "Awesome!"),
    
    Item(title: "Stressed Out", imageName: "stressed_out",
         description: "twenty one pilots — Classic, my childhood. Bonded me with my brother. Never annoying. First song I learned while studying English.",
         review: "Nostalgic!"),
    
    Item(title: "Lost", imageName: "frank_ocean",
         description: "Frank Ocean — Genius. Changes mood fast. Instrumentals are great.",
         review: "Masterpiece!"),
    
    Item(title: "Black Swan", imageName: "black_swan",
         description: "BTS — Perfect instrumentals. Even orchestra performs it beautifully. Music video and choreography are excellent.",
         review: "Perfection!"),
    
    Item(title: "Cherry Hill", imageName: "cherry_hill",
         description: "Russ — Underrated. Reminds me of my brother. Good RnB music, many hidden gems.",
         review: "Hidden gold!"),
    Item(title: "Best Part", imageName: "best_part",
         description: "Daniel Caesar featuring H.E.R — Many great memories are linked to this song. The lyrics are great, Daniel Caesar in general makes good music!",
         review: "Awesome!"),
    
    Item(title: "Stressed Out", imageName: "stressed_out",
         description: "twenty one pilots — Classic, my childhood. Bonded me with my brother. Never annoying. First song I learned while studying English.",
         review: "Nostalgic!"),
    
    Item(title: "Lost", imageName: "frank_ocean",
         description: "Frank Ocean — Genius. Changes mood fast. Instrumentals are great.",
         review: "Masterpiece!"),
    
    Item(title: "Black Swan", imageName: "black_swan",
         description: "BTS — Perfect instrumentals. Even orchestra performs it beautifully. Music video and choreography are excellent.",
         review: "Perfection!"),
    
    Item(title: "Cherry Hill", imageName: "cherry_hill",
         description: "Russ — Underrated. Reminds me of my brother. Good RnB music, many hidden gems.",
         review: "Hidden gold!")
]


let bookItems: [Item] = [
    Item(title: "Alchemist",
         imageName: "alchemist",
         description: "The first interesting plot I read in books. Even though the book is not big enough, the meaning is deeper than the ocean. By rereading, you can learn even more in just 200+ pages.",
         review: "Very inspiring!"),
    Item(title: "Les Miserables",
         imageName: "miserables",
         description: "A great story of several people in the years of war. The book is 2000+ pages, but for 14-year-old me it was just good. Hugo's writing is two-fold: interesting but long.",
         review: "Classic French literature."),
    Item(title: "Arch of Triumph",
         imageName: "remark",
         description: "The story of Ravic, a surgeon who was ghost-appearing during the war years. Alongside his love story, which is real and uncolored, just life.",
         review: "Emotional and deep."),
    Item(title: "Pride and Prejudice",
         imageName: "jane_austen",
         description: "A classic novel by Jane Austen, adapted to several movies. Perfect story with great writing style, good for evening reading.",
         review: "Elegant and witty."),
    Item(title: "The Little Prince",
         imageName: "little_prince",
         description: "A short novella with an excellent moral of the story. Suitable for children at night or adults seeking a masterpiece.",
         review: "Heartwarming and timeless."),
    Item(title: "Alchemist",
         imageName: "alchemist",
         description: "The first interesting plot I read in books. Even though the book is not big enough, the meaning is deeper than the ocean. By rereading, you can learn even more in just 200+ pages.",
         review: "Very inspiring!"),
    Item(title: "Les Miserables",
         imageName: "miserables",
         description: "A great story of several people in the years of war. The book is 2000+ pages, but for 14-year-old me it was just good. Hugo's writing is two-fold: interesting but long.",
         review: "Classic French literature."),
    Item(title: "Arch of Triumph",
         imageName: "remark",
         description: "The story of Ravic, a surgeon who was ghost-appearing during the war years. Alongside his love story, which is real and uncolored, just life.",
         review: "Emotional and deep."),
    Item(title: "Pride and Prejudice",
         imageName: "jane_austen",
         description: "A classic novel by Jane Austen, adapted to several movies. Perfect story with great writing style, good for evening reading.",
         review: "Elegant and witty."),
    Item(title: "The Little Prince",
         imageName: "little_prince",
         description: "A short novella with an excellent moral of the story. Suitable for children at night or adults seeking a masterpiece.",
         review: "Heartwarming and timeless.")
]

let courseItems: [Item] = [
    Item(title: "PP2",
         imageName: "python",
         description: "It was the first year of our study, and we got into game jam hackathons and made several games. Unforgettable memories and knowledge from this year.",
         review: "Fun and very educational!"),
    Item(title: "iOS Development",
         imageName: "swift",
         description: "My own choice. I was waiting for this semester to only pick this course and continue my future journey. Excited about projects and app development.",
         review: "Great preparation for mobile apps!"),
    Item(title: "Calculus",
         imageName: "calculus",
         description: "Math is math, and I love it. The teachers were amazing, so the course went smoothly. I learned more than I expected.",
         review: "Challenging but rewarding."),
    Item(title: "English",
         imageName: "english",
         description: "One of the scariest lessons at first, but it became one of the best courses. It helped me develop soft skills and meet great friends.",
         review: "Highly useful and interactive!"),
    Item(title: "Computer Networks",
         imageName: "networks",
         description: "I learned about networking systems and configurations. We worked on real devices and got practical experience.",
         review: "Super practical and interesting!"),
    Item(title: "PP2",
         imageName: "python",
         description: "It was the first year of our study, and we got into game jam hackathons and made several games. Unforgettable memories and knowledge from this year.",
         review: "Fun and very educational!"),
    Item(title: "iOS Development",
         imageName: "swift",
         description: "My own choice. I was waiting for this semester to only pick this course and continue my future journey. Excited about projects and app development.",
         review: "Great preparation for mobile apps!"),
    Item(title: "Calculus",
         imageName: "calculus",
         description: "Math is math, and I love it. The teachers were amazing, so the course went smoothly. I learned more than I expected.",
         review: "Challenging but rewarding."),
    Item(title: "English",
         imageName: "english",
         description: "One of the scariest lessons at first, but it became one of the best courses. It helped me develop soft skills and meet great friends.",
         review: "Highly useful and interactive!"),
    Item(title: "Computer Networks",
         imageName: "networks",
         description: "I learned about networking systems and configurations. We worked on real devices and got practical experience.",
         review: "Super practical and interesting!")
]


