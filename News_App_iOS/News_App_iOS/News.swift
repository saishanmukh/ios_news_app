//
//  News.swift
//  News_App_iOS
//
//  Created by student on 5/1/22.
//

import Foundation
import UIKit

struct News {
    
    let Headline : String
    let image : UIImage
    let Description : String
    let Date : String
    var isSaved : Bool
    var category: String
    
}


var news1 = News(Headline: "Forever Green | Northwest President John Jasinski's journey",
                 image:UIImage(named: "news1")!,
                 Description: "The man at the helm of Northwest for the last 13 years — and until the conclusion of June — sat in a black leather chair on the first floor of the campus’s Administration Building. He was wearing denim blue jeans, a multi-colored button-up, navy blazer and, most importantly, socks with his dog’s face on them — a mournful tribute to his longtime companion, Ruby, who passed away less than 24 hours prior.", Date: "04/26/2022",
                 isSaved: true,
                 category:"Trending")

var news2 = News(Headline: "Horizons West Apartments undergo name change, plans to start building renovations",
                 image: UIImage(named: "news2")!,
                 Description: "Horizons West Apartments, which is home to many Northwest students, will be undergoing renovations starting in January 2023 after switching management.Guardian Property Management took over management of the buildings in the middle of March, and since then has made multiple plans for the renovation and rebranding of the complex. Guardian Property owns many other buildings across Maryville that house Northwest students, such as Bearcat Village Apartments, The Birches and Peach Creek Apartments.",
                 Date: "04/25/2022",
                 isSaved: false,
                 category: "Headlines")

var news3 = News(Headline: "Wellness Center welcomes new counselor",
                 image: UIImage(named: "news3")!,
                 Description: "Justice Mang’anda, Wellness Center’s newest counselor, wants to use his work and life experiences to help better serve Northwest students. I like to look at it as a jigsaw puzzle, like Northwest is this huge jigsaw puzzle, and if we don't put that one piece like that, there's that one gap, that one shape,” he said. “I bring that little bit of experience from working with people from different socioeconomic status, Native people, and teenagers who are struggling with mood and anxiety.",
                 Date:"04/23/2022",
                 isSaved: true,
                 category: "Wellness")

var news4 = News(Headline: "Campus, community remember beloved baker Ali Elzen",
                 image: UIImage(named: "news4")!,
                 Description: "A bright orange arrow painted on a building in downtown Maryville points the way to an unassuming bakery nestled on East Sixth Street. The once-convivial place to start the day now sits vacant after the death of beloved baker Ali Elzen April 16. Walking into Ali’s Bakery, customers would be welcomed by the indulgent scent of honey and sweet dough that wafted through the bakery. The sound of the coffee maker squeezing out caffeine would be interrupted by Elzen greeting his customers by their names. His affable smile and sparkling, kind eyes made anyone who walked in feel welcomed.",
                 Date:"04/16/2022",
                 isSaved: false,
                 category: "Dining")

var news5 = News(Headline: "100th Student Senate takes over for final meeting of the year",
                 image: UIImage(named: "news5")!,
                 Description: "Out with the old and in with the new — Student Senate’s last meeting of the school year marked the transition of power to the 100th Student Senate. This will be the 100th year that Student Senate has been an official organization on campus, marking a century since its creation. The 100th Student Senate Executive Board — consisting of President Elizabeth Motazedi, Vice President Dami Popoola, Secretary Garrison Kennedy and Treasurer Jillian McNamara — were all officially sworn into their new roles, along with various Senators who will be in new positions during the next academic year.",
                 Date: "04/15/2022",
                 isSaved: true,
                 category: "Adminstration")

var news6 = News(Headline: "Northwest welcomes in Maryville staple as new bookstore, spirit shop partners",
                 image: UIImage(named: "news6")!,
                 Description: "A permanent fixture in the Northwest community for the past three decades will officially begin making its move on campus in the coming months. President John Jasinski announced via his April 8 “All That Jazz” newsletter that Northwest had entered an agreement to have Student Body take over the bookstore and spirit shop on campus, switching from previous partner Barnes and Noble, which managed the bookstore for 38 years. The official takeover will take place July 1.",
                 Date: "04/12/2022",
                 isSaved: false,
                 category: "Editorial")

var news7 = News(Headline: "Northwest presents final performance for the school year",
                 image: UIImage(named: "news7")!,
                 Description: "Theatre Northwest presented Molière’s “The Imaginary Invalid” in the Mary Linn Auditorium at the Ron Houston Center for the Performing Arts from April 13 to April 16 at 7:30 p.m. The play, translated by Miles Malleson, is centered on hypochondriac Monsieur Argan and his daily doctor visits. Doctors, knowing Argan is perfectly healthy, prescribe him worthless medicines and procedures to dupe him out of his money. Meanwhile, Argan wants his daughter to marry a doctor so he can save on his medical bills and always have a physician handy – even though she’s in love with someone else.",
                 Date: "04/13/2022",
                 isSaved: true,
                 category: "Entertainment")

var news8 = News(Headline: "Regents name Green to serve as interim president",
                 image: UIImage(named: "news8")!,
                 Description: "Nearly 48-hours after the Northwest Board of Regents voted to expedite the process of naming the interim president, the University sent out a press release announcing Clarence Green, current vice president of culture, will be serving as Northwest’s new leader while the Board searches for a permanent replacement. Green will assume the position July 1, when current President John Jasinski’s contract expires.",
                 Date: "04/21/2022",
                 isSaved: false,
                 category: "Trending")

var news9 = News(Headline: "Northwest hosts events to educate students during Sexual Assault Awareness Month",
                 image: UIImage(named: "news9")!,
                 Description: "Sexual Assault Awareness Month is a month of education and reflection regarding the topic of sexual assault. It was first nationally observed in the United States in 2001, and has been observed by Northwest through various events during the month for many years. One of the biggest events on campus that has been ongoing since the start of this month is the “What Were You Wearing” display in the Administration Building. The exhibit displays clothing along with stories of survivors of sexual assault to change the mindset that sexual assault happens because of the clothes a person is wearing.",
                 Date: "04/15/2022",
                 isSaved: true,
                 category: "Events" )

var news10 = News(Headline: "You have created a mess, and you must fix it’: Northwest community voices concerns to Board of Regents",
                  image: UIImage(named: "news10")!,
                  Description: "Just 11 days after President John Jasinski sent an “All That Jazz” email saying that the Board of Regents decided not to renew his contract, 168 community members, faculty, staff and students joined a Zoom meeting with the Board to express their concerns about the Regent’s decisions and the lack of transparency that has followed. Regent Chair John Moore said the Board would be in “listen-only mode,” and would not be replying to any of the public comments. Regent Mel Tjeerdsma was the only regent not in attendance.",
                  Date: "04/20/2022",
                  isSaved: false,
                  category: "Trendings")

var news11 = News(Headline: "Northwest baseball completes final home series with sweep over Fort Hays State",
                  image: UIImage(named: "news11")!,
                  Description: "Northwest baseball seniors Jacob Pinkerton and Donovon Warren stepped onto the Bearcat Baseball Field for the final time in their collegiate careers Monday afternoon. The first game of the series saw Northwest ace Max Spitzmiller shine on the mound, striking out 10 batters and allowing five hits with one run. The Bearcats scored a single run in each of the first two innings before Fort Hays scored its only run of the first game in the fourth, courtesy of an RBI single by freshman infielder Brady Kreutzer. Northwest scored two runs in the sixth and seventh to finish with a 6-1 victory.",
                  Date: "04/30/2022",
                  isSaved: true,
                  category: "Sports")

var news12 = News(Headline: "Northwest track changes schedule due to weather, competes in John Creer Classic",
                  image: UIImage(named: "news12")!,
                  Description: "After a busy schedule in the Sunshine State two weeks ago, and a rescheduled meet last weekend, the Northwest track and field team showed up and took care of business at the John Creer Classic April 23 in St. Charles, Missouri.The Bearcats were originally supposed to be competing at the Midwest Classic in Emporia, Kansas, but that changed late into the week due to weather concerns.",
                  Date: "04/28/2022",
                  isSaved: false,
                  category: "Sports")

let news = [news1,news2,news3,news4,news5,news6,news7,news8,news9,news10,news11,news12]
