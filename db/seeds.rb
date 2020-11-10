# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

articles = Article.create([
  {
    title: "Answers to Fermi's Paradox",
    body: "In a new groundbreaking research, scientists have found the most likely answer to Fermi\'s paradox. Using gravitational lensing -- the bending of light and matter by massive objects such as galaxies and clusters -- researchers have proposed a cosmic neutrino \'tourism\' scenario.\n\nSuch scenarios explain how tiny amounts of exotic matter can make the distant universe appear more crowded, suggesting that a little extra matter may be necessary for Fermi\'s paradox to be resolved.\n\n\"Gravitational lensing is a really strong way to see more matter. This goes beyond general relativity to something much stronger. General relativity says all we can see is the matter and the light has no effect on that. But when you point your telescope out into the galaxy, you can see the light distortions of the galaxy as if it were there. It shows us that there is more matter in the universe than we thought,\" said Gregory Elliott, the lead author of the study published in the Journal of Cosmology and Astroparticle Physics.\n\nElliott and his team analysed data from the Gravity Field and Steady-State Ocean Circulation Explorer (GPAO), an underwater observatory aboard the Long Duration Reconnaissance Imager (LDRO) aboard the Aqua spacecraft, in collaboration with Leiden University.\n\nIn the study, the researchers explain how matter might have created the distortions they have detected.\n\n\"While the Fermi Paradox has a number of competing explanations, this new hypothesis can account for each one of them. This is particularly important because many physicists have ruled out some alternatives, such as the suggestion that the universe is just inflating, without offering a better explanation. If our new idea of cosmological tourism is correct, then a \"paradoxical\" amount of the universe could actually be more \'normal,\'\" said Elliott.",
    author: "AI Writer",
    img_url_front: "/images/Exhaustcloud-8.png",
    img_url_middle: "/images/Rocket-8.png",
    img_url_back: "/images/Stars-8.png",
    color: "#192e42",
    main_highlight: true,
  },
  {
    title: "Dangers of Social Media",
    body: "The rise of mental illnesses among youth could be attributed to social media. The documentary The Social Media depicted the dangers and problems with the current internet landscape. At a recent TEDx youth conference, a panelist said, “Without Facebook and Instagram, things would have been completely different.” In the documentary, to cite just one example, several students admitted they were under the thumb of social media when posting or sharing something potentially dangerous. Another millennial panelist shared that Instagram became a great tool for female body image and body positivity because people saw posts that normalize size acceptance and encourage self-love, even if they were unrealistic. However, that same social media outlet has been used to tear down people that do not conform to the standard. Regardless of the issues with social media, and its association with mental illness, Facebook continues to be the go-to resource for informing parents on what their teens may be doing on the web.

    Still, as parents struggle with how to navigate their children's use of Facebook and Instagram, they cannot dismiss the impact of parents. Research reveals that 98% of teens ages 12 to 17 (and 84% of parents) agree that parents should have a \"primary role\" in keeping children safe online, but there is still a tremendous amount of parental oversight. This includes restricting access to devices and communicating with kids about potential risks. Unfortunately, for the most part, it is too little too late. Research from Pew Charitable Trusts estimates that by 2020, 72% of teens will have smartphones, but according to the National PTA, by 2018, only 14% of middle schoolers said their parents were the most reliable source when it came to the safety of their internet use.
    
    That is because we still as a society have not come to grips with the truth: teens are different. In the past, even though parents could often control what their kids played or watched, because teens were still developing their brains and behavior, their wants and needs were more easily understood than they are today. While there are exceptions, today's teens are growing up in an increasingly difficult world to navigate through.",
    author: "AI writer",
    img_url_front: "/images/DoSM.jpg",
    color: "#BEE3DB",
    main_highlight: false,
  },
  {
    title: "Path to Relationship Happiness",
    body: "Single individuals tend to have a lower desire for a romantic relationship when they are more socially satisfied and place their friends higher in their life priorities, according to new research published in the Journal of Social and Personal Relationships.

    The study is one of the first to examine whether age and marital status affect how much older adults enjoy having a romantic partner and what else they value when they are young adults.
    
    “People associate aging with loneliness and it was known that married older people have lower likelihoods of having good social relationships,” said Sarah Schoppe-Sullivan, a PhD candidate in social work at the University of California, Berkeley, and lead author of the study. “Our study found that single individuals are more likely to have lower need for relationship and highest desire for relationship, suggesting that people want to be in a relationship more when they are single.”
    
    For this study, data was collected from a national representative sample of 2,982 adults in 2015. The survey participants were surveyed on their demographics, relationship satisfaction and relationship levels and were asked questions about their parents’ marital status, age at their first sexual partner, age of their first child and the amount they enjoyed having a romantic partner. The researchers found that people who were more satisfied with their current relationships, experienced more positive emotional states and reported having fewer friendships compared with those who were less satisfied, and those who had had children at a younger age reported higher relationship satisfaction compared with those who had children later in life.
    
    “We found that people who valued their current relationship the most also reported the highest levels of relationship satisfaction and the lowest levels of loneliness, suggesting that for singles, a satisfying, good relationship is more important than romantic relationships,” said Schoppe-Sullivan.
    
    Although Schoppe-Sullivan was surprised to find that unmarried people reported higher relationship quality than their married counterparts, she says it may be because unmarried people tend to be more content and satisfied with their current relationships. This finding, she suggests, could be due to people delaying marrying to increase the time they can invest in relationships.
    
    “Engaging in good relationship behaviors like maintaining commitment and having reliable intimacy are all beneficial for relationships,” said Schoppe-Sullivan. “It’s a form of social capital and tied to a sense of well-being and positive emotions. The longer people have these behaviors in place the higher their relationship satisfaction is.”
    
    Schoppe-Sullivan and her team plan to conduct additional research exploring how people who had good social relationships, such as a strong, supportive family, felt more comfortable with intimacy and establishing new relationships, which may explain their higher relationship quality.",
    author: "AI writer",
    color: "#555B6E",
    main_highlight: false,
  },
])

comments = Comment.create([
  {
    body: "Nice",
    author: "Dude",
    score: 5,
    article: articles.first,
  },
  {
    body: "Good job",
    author: "Dudette",
    score: 4,
    article: articles.first,
  },
  {
    body: "Bush hid aliens",
    author: "AJJRE420",
    score: 5,
    article: articles.first,
  },
  {
    body: "Um, actually, based on my own superior intellect obviously they are wrong",
    author: "PM_ME_UR_UNFUNNY_REDDIT_MEME",
    score: 2,
    article: articles.first,
  },
])