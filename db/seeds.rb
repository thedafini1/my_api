karates = [
    { name: "Gichin", second_name: "Funakoshi", country: "Japan", activity: "Founder of Karate-do, creator of the Shotokan style" },
    { name: "Masatoshi", second_name: "Nakayama", country: "Japan", activity: "Chief Instructor of the Japan Karate Association (JKA), developer of the Shotokan style" },
    { name: "Hirokazu", second_name: "Kanazawa", country: "Japan", activity: "Founder and President of the Shotokan Karate International Federation (SKIF)" },
    { name: "Hidetaka", second_name: "Nishiyama", country: "Japan", activity: "Founder and President of the International Traditional Karate Federation (ITKF)" },
    { name: "Jhoon", second_name: "Rhee", country: "South Korea", activity: "Pioneer of Taekwondo in the United States, developer of the \"Jhoon Rhee System\" of martial arts" },
    { name: "Chuck", second_name: "Norris", country: "USA", activity: "Famous martial artist and actor, founder of the Chun Kuk Do style of martial arts" },
    { name: "Bruce", second_name: "Lee", country: "Hong Kong/USA", activity: "Legendary martial artist and actor, founder of Jeet Kune Do" },
    { name: "Chojun", second_name: "Miyagi", country: "Japan", activity: "Founder of the Goju-ryu style of karate" },
    { name: "Seiji", second_name: "Nishimura", country: "Japan", activity: "Founder and President of the Japan Karate Shoto Federation (JKS)" },
    { name: "Kenwa", second_name: "Mabuni", country: "Japan", activity: "Founder of the Shito-ryu style of karate" },
    { name: "Tatsuo", second_name: "Shimabuku", country: "Japan", activity: "Founder of the Isshin-ryu style of karate" },
    { name: "Shigeru", second_name: "Egami", country: "Japan", activity: "Founder and President of the Shotokai organization, student of Gichin Funakoshi" },
    { name: "Tetsuhiko", second_name: "Asai", country: "Japan", activity: "Chief Instructor of the JKA, developer of the Asai-ryu style of karate" },
    { name: "Tadashi", second_name: "Nakamura", country: "Japan", activity: "Founder and President of the World Seido Karate Organization" },
    { name: "Kunio", second_name: "Miyake", country: "Japan", activity: "Founder and President of the Japan Karate-do Inoue-ha Shito-ryu Keishin-kai" },
    { name: "Fumio", second_name: "Demura", country: "Japan/USA", activity: "Famous martial artist and actor, developer of the Shito-ryu style of karate in the United States" },
]

karates.each do |karate|
    Karate.create(karate)
end