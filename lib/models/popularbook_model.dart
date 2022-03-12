class PopularBook {
  String name, author, price, image, description;

  PopularBook(
      {required this.name,
      required this.author,
      required this.price,
      required this.image,
      required this.description});
}

var popularBookData = [
  PopularBook(
    name: "Pattern Maker",
    author: "Mike McHargue",
    image: "assets/images/4.png",
    price: "20",
    description:
        "“Holding brain science in one hand and rich emotional presence in the other, this book feels timely and necessary.”—Shauna Niequist, New York Times bestselling author of Present Over Perfect\n\nWhy is there such a gap between what you want to do and what you actually do? The host of Ask Science Mike explains why our desires and our real lives are so wildly different—and what you can do to close the gap.\n\nFor thousands of years, scientists, philosophers, and self-help gurus have wrestled with one of the basic conundrums of human life: Why do we do the things we do? Or, rather, why do we so often not do the things we want to do? As a podcast host whose voice goes out to millions each month, Mike McHargue gets countless emails from people seeking to understand their own misbehavior—why we binge on Netflix when we know taking a walk outside would be better for us, or why we argue politics on Facebook when our real friends live just down the street. Everyone wants to be a good person, but few of us, twenty years into the new millennium, have any idea how to do that.\n\nIn You’re a Miracle (and a Pain in the Ass), McHargue addresses these issues. We like to think we’re in control of our thoughts and decisions, he writes, but science has shown that a host of competing impulses, emotions, and environmental factors are at play in every action we undertake. Touching on his podcast listeners’ most pressing questions, from relationships and ethics to stress and mental health, and sharing some of the biggest triumphs and hardships from his own life, McHargue shows us how some of our qualities that seem most frustrating—including “negative” emotions like sadness, anger, and anxiety—are actually key to helping humans survive and thrive. In doing so, he invites us on a path of self-understanding and, ultimately, self-acceptance.\n\nYou’re a Miracle (and a Pain in the Ass) is a guided tour through the mystery of human consciousness, showing readers how to live more at peace with themselves in a complex world.",
  ),
];
