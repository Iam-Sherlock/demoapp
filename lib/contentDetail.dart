import 'package:flutter/material.dart';

class ContentDetail extends StatefulWidget {
  final String conTitle;
  final String imgName;
  final Map<String, String> conDetails = {
    "Phineas And Ferb":
        "Once upon a time, in a neighborhood filled with sunshine, lived two amazing brothers named Phineas and Ferb. Every single day, they woke up with a brand new idea!'Today,' Phineas would declare, 'we're building a giant water slide that goes all the way down the street!'And Ferb, without saying a word, would already be grabbing his tools and getting to work.They built the most incredible things! A rollercoaster in their backyard, a time machine to travel to the dinosaurs, even a giant robot that could play basketball!Their older sister, Candace, tried her best to tell Mom and Dad about their crazy inventions, but they were always gone by the time Mom and Dad arrived.Meanwhile, their pet platypus, Perry, had a secret life! He was a super spy, always off on exciting missions to stop Dr. Doofenshmirtz, an evil scientist with silly inventions like an 'inator' that turns people into chickens! Every episode was filled with amazing songs, silly jokes, and lots and lots of laughter. Phineas and Ferb showed us that every day can be an adventure if you just use your imagination!",
    "Vikramadithyan Vedhalam":
        "The classic Indian tale of Vikramaditya and the Vetala follows King Vikramaditya, renowned for his wisdom, as he embarks on a quest to retrieve a dead body from a haunted tree. However, the body is possessed by a mischievous ghost, the Vetala, who proceeds to captivate the king with a series of intriguing stories, each concluding with a challenging riddle. To maintain possession of the Vetala, King Vikramaditya must answer each riddle correctly before sunrise, or the Vetala will escape. Through these encounters, the king showcases his intelligence, quick wit, and profound understanding of human nature, making the Vikramaditya and the Vetala a timeless tale that continues to entertain and inspire.",
    "Jackie Chan":
        "Jackie Chan Adventures is an animated series that follows the escapades of a fictionalized Jackie Chan, renowned for his martial arts prowess. This action-packed show seamlessly blends thrilling fight sequences with hilarious slapstick comedy, appealing to viewers of all ages. Drawing inspiration from Chinese mythology and folklore, the series introduces audiences to captivating legends, creatures, and philosophical concepts. At the heart of the show lies the importance of family and friendship, with Jackie, his niece Jade, and his Uncle working together to overcome various obstacles. The quest to collect twelve magical talismans, each possessing unique powers, drives the plot, leading the characters on exciting adventures across the globe. Jackie Chan Adventures is a beloved show that effectively combines action, humor, and cultural exploration into an engaging and entertaining experience.",
    "Paati Vaadi Kathai":
        "The aroma of freshly fried vadas, a comforting scent that always evoked childhood memories, filled the air. Rani's grandmother, affectionately called "
            "Paati,"
            " was a master of this art, her vadas legendary in the neighborhood for their crispy exterior, soft and fluffy interior, and the burst of flavor from freshly ground urad dal. Rani, eager to emulate her grandmother's culinary prowess, spent hours observing Paati's meticulous process, from soaking the dal for the perfect duration to achieving the ideal batter consistency. However, her initial attempts at replicating the recipe proved unsuccessful, with the vadas turning out either too oily or too hard. Discouraged, Rani almost abandoned her efforts. Yet, with Paati's unwavering encouragement and the gentle reminder that patience and practice were key, Rani persevered. Through trial and error, she gradually refined her technique, finally achieving success. The pride she felt when her friends raved about her homemade vadas was immense. For Rani, making vadas transcended mere culinary skill; it became a cherished tradition, a way to honor her grandmother's legacy, and a reminder of the love and guidance she had received.",
    "Kanna Nee Thoongada":
        """Kanna Nee Thoongada" is a popular Tamil song from the 2017 Indian epic film "Baahubali 2: The Conclusion." The song is a romantic duet sung by Nayana Nair, and it features lyrics by Madan Karky and music by M. M. Keeravani.The song has become a favorite among fans of the film, and it has been praised for its beautiful melody, soulful lyrics, and emotional impact. The song's lyrics express the deep love and longing of a lover for their beloved."""
  };
  ContentDetail({required this.conTitle, required this.imgName, super.key});

  @override
  State<ContentDetail> createState() => _ContentDetailState();
}

class _ContentDetailState extends State<ContentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.conTitle),
        // backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/${widget.conTitle}.jpg",
                height: 300,
                fit: BoxFit.cover,
                width: 350,
              )),
              Center(
                child: Text(
                  widget.conDetails[widget.conTitle] ?? 'None',
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
