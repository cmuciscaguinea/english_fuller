// game_data.dart

import 'dart:math';

class GameContent {
  final String? questionText;
  final String correctAnswer;
  final List<String> answers;
  final String soundPath;
  final String subtitle;

  GameContent({
    required this.questionText,
    required this.correctAnswer,
    required this.answers,
    required this.soundPath,
    required this.subtitle,
  });

  static final Map<int, List<Map<String, dynamic>>> _lessonQuestions = {
    1: [ // Lesson 1
      {
        "questionText": "What sound of this Letter?",
        "soundPath": "audio/game1/aa.mp3",
        "correctAnswer": "Aa",
        "answers": ["Aa", "Ee", "Ii", "Dd"],
        "subtitle": "Alphabet Letters",
      },
      {
        "questionText": "What sound of this Letter?",
        "soundPath": "audio/game1/bb.mp3",
        "correctAnswer": "Bb",
        "answers": ["Bb", "Vv", "Dd", "Pp"],
        "subtitle": "Alphabet Letters",
      },
      {
        "questionText": "What sound of this Letter?",
        "soundPath": "audio/game1/cc.mp3",
        "correctAnswer": "Cc",
        "answers": ["Ss", "Kk", "Cc", "Rr"],
        "subtitle": "Alphabet Letters",
      },
      {
        "questionText": "What sound of this Letter?",
        "soundPath": "audio/game1/dd.mp3",
        "correctAnswer": "Dd",
        "answers": ["Vv", "Bb", "Dd", "Kk"],
        "subtitle": "Alphabet Letters",
      },
      {
        "questionText": "What sound of this Letter?",
        "soundPath": "audio/game1/ee.mp3",
        "correctAnswer": "Ee",
        "answers": ["Ii", "Aa", "Kk", "Ee"],
        "subtitle": "Alphabet Letters",
      },
    ],

    2: [ // Lesson 2
      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/game2/Bad.mp3",
        "correctAnswer": "Bad",
        "answers": ["Bad", "Bell", "Bee", "Boy"],
        "subtitle": "Vowel Sound (Aa)",
      },
      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/game2/Dad.mp3",
        "correctAnswer": "Dad",
        "answers": ["Dune", "Do", "Dad", "Dog"],
        "subtitle": "Vowel Sound (Aa)",
      },
      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/game2/Fat.mp3",
        "correctAnswer": "Fat",
        "answers": ["Feel", "First", "For", "Fat"],
        "subtitle": "Vowel Sound (Aa)",
      },
      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/game2/Bag.mp3",
        "correctAnswer": "Bag",
        "answers": ["Bike", "Bee", "Bag", "Bell"],
        "subtitle": "Vowel Sound (Aa)",
      },
      {
        "questionText": "Which word has /Aa/ sound?",
        "soundPath": "audio/game2/Map.mp3",
        "correctAnswer": "Map",
        "answers": ["Mike", "Me", "Map", "Miss"],
        "subtitle": "Vowel Sound (Aa)",
      },
    ],


    3: [ // Lesson 3
      {
        "questionText": "Which word has /Ee/ sound?",
        "soundPath": "audio/game3/Bed.mp3",
        "correctAnswer": "Bed",
        "answers": ["Bad", "Bed", "Bid", "Bike"],
        "subtitle": "Vowel Sound (Ee)",
      },
      {
        "questionText": "Which word has /Ee/ sound?",
        "soundPath": "audio/game3/Red.mp3",
        "correctAnswer": "Red",
        "answers": ["Red", "Ride", "Rat", "Rike"],
        "subtitle": "Vowel Sound (Ee)",
      },
      {
        "questionText": "Which word has /Ee/ sound?",
        "soundPath": "audio/game3/Beg.mp3",
        "correctAnswer": "Beg",
        "answers": ["Bus", "Bite", "Big", "Beg"],
        "subtitle": "Vowel Sound (Ee)",
      },
      {
        "questionText": "Which word has /Ee/ sound?",
        "soundPath": "audio/game3/Leg.mp3",
        "correctAnswer": "Bag",
        "answers": ["Lid", "Lig", "Leg", "Like"],
        "subtitle": "Vowel Sound (Ee)",
      },
      {
        "questionText": "Which word has /Ee/ sound?",
        "soundPath": "audio/game3/Peg.mp3",
        "correctAnswer": "Peg",
        "answers": ["Peg", "Pig", "Pie", "Pass"],
        "subtitle": "Vowel Sound (Ee)",
      },
    ],


  4: [ // Lesson 4
        {
          "questionText": "Which word has /Ii/ sound?",
          "soundPath": "audio/game4/Lid.mp3",
          "correctAnswer": "Lid",
          "answers": ["Lid", "Led", "Lead", "Len"],
          "subtitle": "Vowel Sound (Ii)",
        },
        {
          "questionText": "Which word has /Ii/ sound?",
          "soundPath": "audio/game4/Kid.mp3",
          "correctAnswer": "Dad",
          "answers": ["Kate", "Kath", "Keth", "Kid"],
          "subtitle": "Vowel Sound (Ii)",
        },
        {
          "questionText": "Which word has /Ii/ sound?",
          "soundPath": "audio/game4/Big.mp3",
          "correctAnswer": "Big",
          "answers": ["Bus", "Bite", "Big", "Bag"],
          "subtitle": "Vowel Sound (Ii)",
        },
        {
          "questionText": "Which word has /Ii/ sound?",
          "soundPath": "audio/game4/Lip.mp3",
          "correctAnswer": "Lip",
          "answers": ["Lap", "Less", "Look", "Lip"],
          "subtitle": "Vowel Sound (Ii)",
        },
        {
          "questionText": "Which word has /Ii/ sound?",
          "soundPath": "audio/game4/Dip.mp3",
          "correctAnswer": "Dip",
          "answers": ["Dust", "Dot", "Dio", "Dash"],
          "subtitle": "Vowel Sound (Ii)",
        },
      ],

      5: [ // Lesson 5
        {
          "questionText": "Which word has /Oo/ sound?",
          "soundPath": "audio/game5/God.mp3",
          "correctAnswer": "God",
          "answers": ["Gas", "Gun", "God", "Girl"],
          "subtitle": "Vowel Sound (Oo)",
        },
        {
          "questionText": "Which word has /Oo/ sound?",
          "soundPath": "audio/game5/Nod.mp3",
          "correctAnswer": "Nod",
          "answers": ["Nike", "Nice", "Nod", "Null"],
          "subtitle": "Vowel Sound (Oo)",
        },
        {
          "questionText": "Which word has /Oo/ sound?",
          "soundPath": "audio/game5/Log.mp3",
          "correctAnswer": "Log",
          "answers": ["Log", "Last", "Less", "Lite"],
          "subtitle": "Vowel Sound (Oo)",
        },
        {
          "questionText": "Which word has /Oo/ sound?",
          "soundPath": "audio/game5/Hog.mp3",
          "correctAnswer": "Hog",
          "answers": ["Hike", "Hug", "Hog", "Hall"],
          "subtitle": "Vowel Sound (Oo)",
        },
        {
          "questionText": "Which word has /Oo/ sound?",
          "soundPath": "audio/game5/Jog.mp3",
          "correctAnswer": "Jog",
          "answers": ["Just", "Jog", "Jet", "Jump"],
          "subtitle": "Vowel Sound (Oo)",
        },
      ],


      6: [ // Lesson 6
        {
          "questionText": "Which word has /Uu/ sound?",
          "soundPath": "audio/game6/Rug.mp3",
          "correctAnswer": "Rug",
          "answers": ["Rug", "Rat", "Rice", "Role"],
          "subtitle": "Vowel Sound (Uu)",
        },
        {
          "questionText": "Which word has /Uu/ sound?",
          "soundPath": "audio/game6/Tug.mp3",
          "correctAnswer": "Tug",
          "answers": ["Tug", "Tag", "Toll", "Tall"],
          "subtitle": "Vowel Sound (Uu)",
        },
        {
          "questionText": "Which word has /Uu/ sound?",
          "soundPath": "audio/game6/Bud.mp3",
          "correctAnswer": "Bud",
          "answers": ["Bud", "Ball", "Book", "Bee"],
          "subtitle": "Vowel Sound (Uu)",
        },
        {
          "questionText": "Which word has /Uu/ sound?",
          "soundPath": "audio/game6/Mud.mp3",
          "correctAnswer": "Mud",
          "answers": ["Mud", "Mask", "Mode", "Mass"],
          "subtitle": "Vowel Sound (Uu)",
        },
        {
          "questionText": "Which word has /Uu/ sound?",
          "soundPath": "audio/game6/Bum.mp3",
          "correctAnswer": "Bum",
          "answers": ["Bop", "Bum", "Back", "Bass"],
          "subtitle": "Vowel Sound (Uu)",
        },
      ],



      7: [ // Lesson 10
        {
          "questionText": "Who ran?",
          "soundPath": "audio/game7/Mouse.mp3",
          "correctAnswer": "Mouse",
          "answers": ["Cat", "Dog", "Mouse", "Bird"],
          "subtitle": "Hickory Dickory Dock",
        },

        {
          "questionText": "Run where?",
          "soundPath": "audio/game7/Clock.mp3",
          "correctAnswer": "Clock",
          "answers": ["Wall", "Clock", "Tree", "Bed"],
          "subtitle": "Hickory Dickory Dock",
        },

        {
          "questionText": "Clock struck?",
          "soundPath": "audio/game7/One.mp3",
          "correctAnswer": "One",
          "answers": ["Three", "Two", "One", "Four"],
          "subtitle": "Hickory Dickory Dock",
        },

        {
          "questionText": "What did mouse do next?",
          "soundPath": "audio/game7/Run.mp3",
          "correctAnswer": "Run",
          "answers": ["Jump", "Sleep", "Run", "Hide"],
          "subtitle": "Hickory Dickory Dock",
        },

        {
          "questionText": "Rhymes with “Dickory”?",
          "soundPath": "audio/game7/Hickory.mp3",
          "correctAnswer": "Hickory",
          "answers": ["Sit", "Map", "Hickory", "Toy"],
          "subtitle": "Hickory Dickory Dock",
        },
       
      ],

      8: [ // Lesson 10
        {
          "questionText": "Who climbed?",
          "soundPath": "audio/game8/Spider.mp3",
          "correctAnswer": "Spider",
          "answers": ["Spider", "Ant", "Bug", "Bee"],
          "subtitle": "Incy Wincy Spider",
        },

        {
          "questionText": "Climbed where?",
          "soundPath": "audio/game8/Spout.mp3",
          "correctAnswer": "Spout",
          "answers": ["Spout", "Wall", "Tree", "Roof"],
          "subtitle": "Incy Wincy Spider",
        },

        {
          "questionText": "What came down?",
          "soundPath": "audio/game8/Rain.mp3",
          "correctAnswer": "The Rain",
          "answers": ["Snow", "The Rain", "Wind", "Sun"],
          "subtitle": "Incy Wincy Spider",
        },

        {
          "questionText": "What came out?",
          "soundPath": "audio/game8/Sunshine.mp3",
          "correctAnswer": "Sunshine",
          "answers": ["Moon", "Light", "Sunshine", "Cloud"],
          "subtitle": "Incy Wincy Spider",
        },

        {
          "questionText": "What did spider do again?",
          "soundPath": "audio/game8/Climb.mp3",
          "correctAnswer": "Climb Up",
          "answers": ["Jump", "Run", "Sleep", "Climb Up"],
          "subtitle": "Incy Wincy Spider",
        },
       
      ],


      9: [ // Lesson 10
        {
          "questionText": "Who had a dolly?",
          "soundPath": "audio/game9/Polly.mp3",
          "correctAnswer": "Polly",
          "answers": ["Mary", "Polly", "Molly", "Sally"],
          "subtitle": "Miss Polly had a Dolly",
        },

        {
          "questionText": "What was wrong with the dolly?",
          "soundPath": "audio/game9/Sick.mp3",
          "correctAnswer": "Sick",
          "answers": ["Tired", "Cold", "Sick", "Fine"],
          "subtitle": "Miss Polly had a Dolly",
        },

        {
          "questionText": "Who did Polly call?",
          "soundPath": "audio/game9/Doctor.mp3",
          "correctAnswer": "Doctor",
          "answers": ["Teacher", "Nurse", "Doctor", "Friend"],
          "subtitle": "Miss Polly had a Dolly",
        },

        {
          "questionText": "What did the doctor bring?",
          "soundPath": "audio/game9/Bag.mp3",
          "correctAnswer": "Bag",
          "answers": ["Ball", "Bag", "Book", "Spoon"],
          "subtitle": "Miss Polly had a Dolly",
        },

        {
          "questionText": "When will he come back?",
          "soundPath": "audio/game9/Morning.mp3",
          "correctAnswer": "Morning",
          "answers": ["Night", "Noon", "Morning", "Evening"],
          "subtitle": "Miss Polly had a Dolly",
        },
       
      ],


      10: [ // Lesson 10
        {
          "questionText": "Which word has /al/ sound?",
          "soundPath": "audio/game6/Ball.mp3",
          "correctAnswer": "Ball",
          "answers": ["Ball", "Bull", "Bot", "bus"],
          "subtitle": "Rhyming Words /al/",
        },
        {
          "questionText": "Which word has /al/ sound?",
          "soundPath": "audio/game6/Tall.mp3",
          "correctAnswer": "Tall",
          "answers": ["Tall", "Tag", "Toll", "Toast"],
          "subtitle": "Rhyming Words /al/",
        },
        {
          "questionText": "Which word has /al/ sound?",
          "soundPath": "audio/game6/Wall.mp3",
          "correctAnswer": "Wall",
          "answers": ["Wull", "Wall", "Whole", "who"],
          "subtitle": "Rhyming Words /al/",
        },
        {
          "questionText": "Which word has /al/ sound?",
          "soundPath": "audio/game6/Call.mp3",
          "correctAnswer": "Call",
          "answers": ["Call", "Coast", "Clone", "Class"],
          "subtitle": "Rhyming Words /al/",
        },
        {
          "questionText": "Which word has /al/ sound?",
          "soundPath": "audio/game6/Fall.mp3",
          "correctAnswer": "Fall",
          "answers": ["Fast", "Fault", "Fall", "Fold"],
          "subtitle": "Rhyming Words /al/",
        },
      ],


      11: [ // Lesson 10
        {
          "questionText": "Which word has /ar/ sound?",
          "soundPath": "audio/game11/Car.mp3",
          "correctAnswer": "Car",
          "answers": ["Cast", "Car", "Cat", "Can"],
          "subtitle": "Rhyming Words /ar/",
        },
        {
          "questionText": "Which word has /ar/ sound?",
          "soundPath": "audio/game11/Bar.mp3",
          "correctAnswer": "Bar",
          "answers": ["Bus", "Ball", "Bar", "Boat"],
          "subtitle": "Rhyming Words /ar/",
        },
        {
          "questionText": "Which word has /ar/ sound?",
          "soundPath": "audio/game11/Far.mp3",
          "correctAnswer": "Far",
          "answers": ["Fast", "Fun", "For", "Far"],
          "subtitle": "Rhyming Words /ar/",
        },
        {
          "questionText": "Which word has /ar/ sound?",
          "soundPath": "audio/game11/Jar.mp3",
          "correctAnswer": "Jar",
          "answers": ["Jump", "Joy", "Jar", "Jet"],
          "subtitle": "Rhyming Words /ar/",
        },
        {
          "questionText": "Which word has /ar/ sound?",
          "soundPath": "audio/game11/Star.mp3",
          "correctAnswer": "Star",
          "answers": ["Sun", "Stay", "Star", "Still"],
          "subtitle": "Rhyming Words /ar/",
        },
      ],



      12: [ // Lesson 10
        {
          "questionText": "Which word has /at/ sound?",
          "soundPath": "audio/game12/Cat.mp3",
          "correctAnswer": "Cat",
          "answers": ["cast", "Cat", "Call", "Cost"],
          "subtitle": "Rhyming Words /at/",
        },
        {
          "questionText": "Which word has /at/ sound?",
          "soundPath": "audio/game12/Bat.mp3",
          "correctAnswer": "Bat",
          "answers": ["Ball", "Bull", "Bat", "bus"],
          "subtitle": "Rhyming Words /at/",
        },
        {
          "questionText": "Which word has /at/ sound?",
          "soundPath": "audio/game12/Hot.mp3",
          "correctAnswer": "Hat",
          "answers": ["Hat", "Hall", "Host", "Hot"],
          "subtitle": "Rhyming Words /at/",
        },
        {
           "questionText": "Which word has /at/ sound?",
          "soundPath": "audio/game12/Rat.mp3",
          "correctAnswer": "Rat",
          "answers": ["Rat", "Ray", "Rest", "Right"],
          "subtitle": "Rhyming Words /at/",
        },
        {
           "questionText": "Which word has /at/ sound?",
          "soundPath": "audio/game12/Sat.mp3",
          "correctAnswer": "Sat",
          "answers": ["Sat", "Sun", "Soil", "Son"],
          "subtitle": "Rhyming Words /at/",
        },
      ],



      13: [ // Lesson 10
        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game13/Free.mp3",
          "correctAnswer": "Free",
          "answers": ["Free", "Face", "Fate", "Fake"],
          "subtitle": "Rhyming Words /ee/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game13/Three.mp3",
          "correctAnswer": "Three",
          "answers": ["Three", "Trace", "Truck", "Troll"],
          "subtitle": "Rhyming Words /ee/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game13/Tree.mp3",
          "correctAnswer": "Tree",
          "answers": ["Taste", "Take", "Tree", "Tail"],
          "subtitle": "Rhyming Words /ee/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game13/Bee.mp3",
          "correctAnswer": "Bee",
          "answers": ["Bake", "Base", "Bite", "Bee"],
          "subtitle": "Rhyming Words /ee/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game13/Knee.mp3",
          "correctAnswer": "Knee",
          "answers": ["Neck", "Knee", "Neat", "Nest"],
          "subtitle": "Rhyming Words /ee/",
        },
       
      ],



      14: [ // Lesson 10
        {
          "questionText": "Which word has /ell/ sound?",
          "soundPath": "audio/game14/Shell.mp3",
          "correctAnswer": "Shell",
          "answers": ["Shame", "She", "Shell", "Sale"],
          "subtitle": "Rhyming Words /ell/",
        },

        {
          "questionText": "Which word has /ell/ sound?",
          "soundPath": "audio/game14/Bell.mp3",
          "correctAnswer": "Bell",
          "answers": ["Bell", "Belt", "Bless", "Blame"],
          "subtitle": "Rhyming Words /ell/",
        },

        {
          "questionText": "Which word has /ell/ sound?",
          "soundPath": "audio/game14/Smell.mp3",
          "correctAnswer": "Smell",
          "answers": ["Smell", "Small", "Smpke", "Smile"],
          "subtitle": "Rhyming Words /ell/",
        },
        
        {
          "questionText": "Which word has /ell/ sound?",
          "soundPath": "audio/game14/Spell.mp3",
          "correctAnswer": "Spell",
          "answers": ["Spice", "Sale", "Sync", "Spell"],
          "subtitle": "Rhyming Words /ell/",
        },

        {
          "questionText": "Which word has /ell/ sound?",
          "soundPath": "audio/game14/Swell.mp3",
          "correctAnswer": "Swell",
          "answers": ["Swell", "Swine", "Shine", "Sale"],
          "subtitle": "Rhyming Words /ell/",
        },

        
      ],


      15: [ // Lesson 10
        {
          "questionText": "Which word has /uck/ sound?",
          "soundPath": "audio/game15/Duck.mp3",
          "correctAnswer": "Duck",
          "answers": ["Duck", "Doll", "Does", "Don't"],
          "subtitle": "Rhyming Words /uck/",
        },

        {
          "questionText": "Which word has /uck/ sound?",
          "soundPath": "audio/game15/Truck.mp3",
          "correctAnswer": "Truck",
          "answers": ["Tall", "Truck", "Time", "Trust"],
          "subtitle": "Rhyming Words /uck/",
        },

        {
          "questionText": "Which word has /uck/ sound?",
          "soundPath": "audio/game15/Luck.mp3",
          "correctAnswer": "Luck",
          "answers": ["Luck", "Lest", "Less", "Lake"],
          "subtitle": "Rhyming Words /uck/",
        },

        {
          "questionText": "Which word has /uck/ sound?",
          "soundPath": "audio/game15/Buck.mp3",
          "correctAnswer": "Buck",
          "answers": ["Buck", "Best", "Bless", "Base"],
          "subtitle": "Rhyming Words /uck/",
        },

        {
          "questionText": "Which word has /uck/ sound?",
          "soundPath": "audio/game15/Pluck.mp3",
          "correctAnswer": "Luck",
          "answers": ["Pluck", "Play", "Plus", "Plot"],
          "subtitle": "Rhyming Words /uck/",
        },
       
      ],


      16: [ // Lesson 10
        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game16/fate.mp3",
          "correctAnswer": "Fate",
          "answers": ["Fate", "Fist", "Feet", "Fit"],
          "subtitle": "Word with 'a' sound of /ey/",
        },

        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game16/lam.mp3",
          "correctAnswer": "Lam",
          "answers": ["Luck", "Let", "Lost", "Look"],
          "subtitle": "Word with 'a' sound of /ey/",
        },

        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game16/man.mp3",
          "correctAnswer": "Man",
          "answers": ["Man", "Men", "Must", "Most"],
          "subtitle": "Word with 'a' sound of /ey/",
        },

        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game16/quack.mp3",
          "correctAnswer": "Quack",
          "answers": ["Quack", "Quite", "Queen", "Quil"],
          "subtitle": "Word with 'a' sound of /ey/",
        },

        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game16/quake.mp3",
          "correctAnswer": "Quake",
          "answers": ["Quake", "Quite", "Queen", "Quil"],
          "subtitle": "Word with 'a' sound of /ey/",
        },
       
      ],


      17: [ // Lesson 10
        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game17/Maid.mp3",
          "correctAnswer": "Maid",
          "answers": ["Maid", "Male", "Mole", "Must"],
          "subtitle": "Word with 'ai' sound of /ey/",
        },
        
        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game17/Nail.mp3",
          "correctAnswer": "Nail",
          "answers": ["Nail", "Nest", "Nick", "None"],
          "subtitle": "Word with 'ai' sound of /ey/",
        },

        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game17/Pail.mp3",
          "correctAnswer": "Pail",
          "answers": ["Pail", "Pest", "Pick", "Phone"],
          "subtitle": "Word with 'ai' sound of /ey/",
        },

        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game17/Rail.mp3",
          "correctAnswer": "Rail",
          "answers": ["Rail", "Rest", "Roll", "Rust"],
          "subtitle": "Word with 'ai' sound of /ey/",
        },

        {
          "questionText": "Which word has /ey/ sound?",
          "soundPath": "audio/game17/Trail.mp3",
          "correctAnswer": "Trail",
          "answers": ["Trail", "Test", "Thick", "Thin"],
          "subtitle": "Word with 'ai' sound of /ey/",
        },


      ],


      18: [ // Lesson 10
        {
          "questionText": "Which word has /ow/ sound?",
          "soundPath": "audio/game18/Draw.mp3",
          "correctAnswer": "Draw",
          "answers": ["Draw", "Dog", "Does", "Dust"],
          "subtitle": "Word with 'aw' sound of /ow/",
        },

        {
          "questionText": "Which word has /ow/ sound?",
          "soundPath": "audio/game18/Flaw.mp3",
          "correctAnswer": "Flaw",
          "answers": ["Flaw", "Flush", "Flag", "Flood"],
          "subtitle": "Word with 'aw' sound of /ow/",
        },

        {
          "questionText": "Which word has /ow/ sound?",
          "soundPath": "audio/game18/Hawk.mp3",
          "correctAnswer": "Hawk",
          "answers": ["Hawk", "Hug", "Hall", "Host"],
          "subtitle": "Word with 'aw' sound of /ow/",
        },

        {
          "questionText": "Which word has /ow/ sound?",
          "soundPath": "audio/game18/Jaw.mp3",
          "correctAnswer": "Jaw",
          "answers": ["Jaw", "Joy", "Just", "Jack"],
          "subtitle": "Word with 'aw' sound of /ow/",
        },
        
        {
          "questionText": "Which word has /ow/ sound?",
          "soundPath": "audio/game18/Law.mp3",
          "correctAnswer": "Law",
          "answers": ["Law", "Log", "Last", "Look"],
          "subtitle": "Word with 'aw' sound of /ow/",
        },


      ],


      19: [ // Lesson 10
        {
          "questionText": "Which word has /ay/ sound?",
          "soundPath": "audio/game19/Away.mp3",
          "correctAnswer": "Away",
          "answers": ["Away", "As", "Apple", "Ant"],
          "subtitle": "Word with 'ay' sound of /ey/",
        },

        {
          "questionText": "Which word has /ay/ sound?",
          "soundPath": "audio/game19/Clay.mp3",
          "correctAnswer": "Clay",
          "answers": ["Clay", "Clone", "Class", "Clock"],
          "subtitle": "Word with 'ay' sound of /ey/",
        },

        {
          "questionText": "Which word has /ay/ sound?",
          "soundPath": "audio/game19/Lay.mp3",
          "correctAnswer": "lay",
          "answers": ["Lay", "Last", "Lost", "Look"],
          "subtitle": "Word with 'ay' sound of /ey/",
        },

        {
          "questionText": "Which word has /ay/ sound?",
          "soundPath": "audio/game19/Slay.mp3",
          "correctAnswer": "Slay",
          "answers": ["Slash", "As", "Sun", "Sunk"],
          "subtitle": "Word with 'ay' sound of /ey/",
        },

        {
          "questionText": "Which word has /ay/ sound?",
          "soundPath": "audio/game19/Stay.mp3",
          "correctAnswer": "Stay",
          "answers": ["Stay", "Same", "Sake", "Sail"],
          "subtitle": "Word with 'ay' sound of /ey/",
        },
     

      ],

      20: [ // Lesson 10
        {
          "questionText": "Which word has /ea/ sound?",
          "soundPath": "audio/game20/beam.mp3",
          "correctAnswer": "Beam",
          "answers": ["Beam", "Beep", "Bake", "Bus"],
          "subtitle": "Word with 'ea' sound of /iy/",
        },

        {
          "questionText": "Which word has /ea/ sound?",
          "soundPath": "audio/game20/beat.mp3",
          "correctAnswer": "Beat",
          "answers": ["Beat", "Beep", "Bake", "Bus"],
          "subtitle": "Word with 'ea' sound of /iy/",
        },

        {
          "questionText": "Which word has /ea/ sound?",
          "soundPath": "audio/game20/deal.mp3",
          "correctAnswer": "Deal",
          "answers": ["Died", "Dust", "Deal", "Duck"],
          "subtitle": "Word with 'ea' sound of /iy/",
        },

        {
          "questionText": "Which word has /ea/ sound?",
          "soundPath": "audio/game20/East.mp3",
          "correctAnswer": "East",
          "answers": ["East", "Eat", "Egg", "Edge"],
          "subtitle": "Word with 'ea' sound of /iy/",
        },

        {
          "questionText": "Which word has /ea/ sound?",
          "soundPath": "audio/game20/least.mp3",
          "correctAnswer": "Least",
          "answers": ["Last", "Long", "Lake", "Least"],
          "subtitle": "Word with 'ea' sound of /iy/",
        },


      ],

      21: [ // Lesson 10
        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game21/beet.mp3",
          "correctAnswer": "Beet",
          "answers": ["Beet", "Base", "Ball", "Bat"],
          "subtitle": "Word with 'ee' sound of /iy/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game21/breeze.mp3",
          "correctAnswer": "Breeze",
          "answers": ["Breeze", "Base", "Ball", "Bat"],
          "subtitle": "Word with 'ee' sound of /iy/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game21/seen.mp3",
          "correctAnswer": "Seen",
          "answers": ["Seen", "Sea", "Soul", "Sun"],
          "subtitle": "Word with 'ee' sound of /iy/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game21/sweet.mp3",
          "correctAnswer": "Sweet",
          "answers": ["Sweet", "Sail", "Sun", "Sauce"],
          "subtitle": "Word with 'ee' sound of /iy/",
        },

        {
          "questionText": "Which word has /ee/ sound?",
          "soundPath": "audio/game21/weed.mp3",
          "correctAnswer": "Weed",
          "answers": ["Whale", "Weed", "Water", "Watch"],
          "subtitle": "Word with 'ee' sound of /iy/",
        },


      ],

      22: [ // Lesson 10
        {
          "questionText": "Which word has /ew/ sound?",
          "soundPath": "audio/game22/blew.mp3",
          "correctAnswer": "Blew",
          "answers": ["Blade", "Blew", "Bake", "Bus"],
          "subtitle": "Word with 'ew' sound of /ew/",
        },

        {
          "questionText": "Which word has /ew/ sound?",
          "soundPath": "audio/game22/chew.mp3",
          "correctAnswer": "Chew",
          "answers": ["Chew", "Cherry", "Cat", "Castle"],
          "subtitle": "Word with 'ew' sound of /ew/",
        },

        {
          "questionText": "Which word has /ew/ sound?",
          "soundPath": "audio/game22/dew.mp3",
          "correctAnswer": "Dew",
          "answers": ["Dog", "Dew", "Doll", "Dust"],
          "subtitle": "Word with 'ew' sound of /ew/",
        },

        {
          "questionText": "Which word has /ew/ sound?",
          "soundPath": "audio/game22/drew.mp3",
          "correctAnswer": "Drew",
          "answers": ["Drew", "Draw", "Drive", "Drill"],
          "subtitle": "Word with 'ew' sound of /ew/",
        },

        {
          "questionText": "Which word has /ew/ sound?",
          "soundPath": "audio/game22/few.mp3",
          "correctAnswer": "Few",
          "answers": ["Few", "Feast", "Father", "Fly"],
          "subtitle": "Word with 'ew' sound of /ew/",
        },

      ],

      23: [ // Lesson 10
        {
          "questionText": "Which word has /i/ sound?",
          "soundPath": "audio/game23/Bite.mp3",
          "correctAnswer": "Bite",
          "answers": ["Bite", "Ball", "Bee", "Bake"],
          "subtitle": "Word with 'i' sound of /ay/",
        },

        {
          "questionText": "Which word has /i/ sound?",
          "soundPath": "audio/game23/Dike.mp3",
          "correctAnswer": "Dike",
          "answers": ["Dike", "Doll", "Dog", "Dust"],
          "subtitle": "Word with 'i' sound of /ay/",
        },

        {
          "questionText": "Which word has /i/ sound?",
          "soundPath": "audio/game23/Dime.mp3",
          "correctAnswer": "Dime",
          "answers": ["Dime", "Doll", "Dog", "Dust"],
          "subtitle": "Word with 'i' sound of /ay/",
        },

        {
          "questionText": "Which word has /i/ sound?",
          "soundPath": "audio/game23/Like.mp3",
          "correctAnswer": "Like",
          "answers": ["Like", "Long", "Lost", "Look"],
          "subtitle": "Word with 'i' sound of /ay/",
        },

        {
          "questionText": "Which word has /i/ sound?",
          "soundPath": "audio/game23/Ride.mp3",
          "correctAnswer": "Ride",
          "answers": ["Ride", "Rat", "Rest", "Roll"],
          "subtitle": "Word with 'i' sound of /ay/",
        },

      ],

      24: [ // Lesson 10
        {
          "questionText": "Which word has /oi/ sound?",
          "soundPath": "audio/game24/choice.mp3",
          "correctAnswer": "Choice",
          "answers": ["Choice", "Choose", "Chalk", "Chase"],
          "subtitle": "Word with 'oi' sound of /oy/",
        },

        {
          "questionText": "Which word has /oi/ sound?",
          "soundPath": "audio/game24/soil.mp3",
          "correctAnswer": "Soil",
          "answers": ["Soil", "Sun", "Soul", "Sauce"],
          "subtitle": "Word with 'oi' sound of /oy/",
        },

        {
          "questionText": "Which word has /oi/ sound?",
          "soundPath": "audio/game24/toil.mp3",
          "correctAnswer": "Toil",
          "answers": ["Toil", "Taost", "Tall", "Talk"],
          "subtitle": "Word with 'oi' sound of /oy/",
        },

        {
          "questionText": "Which word has /oi/ sound?",
          "soundPath": "audio/game24/boys.mp3",
          "correctAnswer": "Boys",
          "answers": ["Boys", "Book", "Ball", "Base"],
          "subtitle": "Word with 'oi' sound of /oy/",
        },

        {
          "questionText": "Which word has /oi/ sound?",
          "soundPath": "audio/game24/joy.mp3",
          "correctAnswer": "Joy",
          "answers": ["Joy", "John", "Jail", "Jump"],
          "subtitle": "Word with 'oi' sound of /oy/",
        },


      ],

      25: [ // Lesson 10
        {
          "questionText": "Which word has /oo/ sound?",
          "soundPath": "audio/game25/book.mp3",
          "correctAnswer": "Book",
          "answers": ["Book", "Ball", "Bus", "Bake"],
          "subtitle": "Word with 'oo' sound of /oo/",
        },

        {
          "questionText": "Which word has /oo/ sound?",
          "soundPath": "audio/game25/cook.mp3",
          "correctAnswer": "Cook",
          "answers": ["Cook", "Clock", "Cast", "Cat"],
          "subtitle": "Word with 'oo' sound of /oo/",
        },

        {
          "questionText": "Which word has /oo/ sound?",
          "soundPath": "audio/game25/crook.mp3",
          "correctAnswer": "Crook",
          "answers": ["Crook", "Cat", "Clock", "Cast"],
          "subtitle": "Word with 'oo' sound of /oo/",
        },

        {
          "questionText": "Which word has /oo/ sound?",
          "soundPath": "audio/game25/good.mp3",
          "correctAnswer": "Good",
          "answers": ["God", "Good", "Glass", "Game"],
          "subtitle": "Word with 'oo' sound of /oo/",
        },

        {
          "questionText": "Which word has /oo/ sound?",
          "soundPath": "audio/game25/look.mp3",
          "correctAnswer": "Look",
          "answers": ["Last", "Late", "Lot", "Look"],
          "subtitle": "Word with 'oo' sound of /oo/",
        },

      ],

      26: [ // Lesson 10
        {
          "questionText": "Which word has /ou/ sound?",
          "soundPath": "audio/game26/found.mp3",
          "correctAnswer": "Found",
          "answers": ["Found", "Fast", "Fall", "Feet"],
          "subtitle": "Word with 'ou' sound of /aw/",
        },

        {
          "questionText": "Which word has /ou/ sound?",
          "soundPath": "audio/game26/house.mp3",
          "correctAnswer": "House",
          "answers": ["House", "Hat", "Heat", "Horn"],
          "subtitle": "Word with 'ou' sound of /aw/",
        },

        {
          "questionText": "Which word has /ou/ sound?",
          "soundPath": "audio/game26/loud.mp3",
          "correctAnswer": "Loud",
          "answers": ["Loud", "Last", "Long", "Let"],
          "subtitle": "Word with 'ou' sound of /aw/",
        },

        {
          "questionText": "Which word has /ou/ sound?",
          "soundPath": "audio/game26/mouth.mp3",
          "correctAnswer": "Mouth",
          "answers": ["Mouth", "Mass", "Mall", "Mess"],
          "subtitle": "Word with 'ou' sound of /aw/",
        },

        {
          "questionText": "Which word has /ou/ sound?",
          "soundPath": "audio/game26/out.mp3",
          "correctAnswer": "Out",
          "answers": ["Out", "Owl", "Own", "One"],
          "subtitle": "Word with 'ou' sound of /aw/",
        },

      ],

      27: [ // Lesson 10
        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game27/cod.mp3",
          "correctAnswer": "Cod",
          "answers": ["Cod", "Call", "Cake", "Cat"],
          "subtitle": "Word with 'o' sound of /a/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game27/god.mp3",
          "correctAnswer": "God",
          "answers": ["God", "Good", "Goal", "Gave"],
          "subtitle": "Word with 'o' sound of /a/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game27/jot.mp3",
          "correctAnswer": "Jot",
          "answers": ["Jot", "Just", "Jake", "Jet"],
          "subtitle": "Word with 'o' sound of /a/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game27/not.mp3",
          "correctAnswer": "Not",
          "answers": ["Not", "Net", "Nest", "Nail"],
          "subtitle": "Word with 'o' sound of /a/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game27/cop.mp3",
          "correctAnswer": "Cop",
          "answers": ["Cop", "Call", "Cut", "Can"],
          "subtitle": "Word with 'o' sound of /a/",
        },


      ],

      28: [ // Lesson 10
        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game28/boss.mp3",
          "correctAnswer": "Boss",
          "answers": ["Boss", "Ball", "Basket", "Bed"],
          "subtitle": "Word with 'o' sound of /o/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game28/both.mp3",
          "correctAnswer": "Both",
          "answers": ["Both", "Best", "Back", "Bed"],
          "subtitle": "Word with 'o' sound of /o/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game28/morning.mp3",
          "correctAnswer": "Morning",
          "answers": ["Morning", "Mass", "Make", "Mail"],
          "subtitle": "Word with 'o' sound of /o/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game28/rona.mp3",
          "correctAnswer": "Rona",
          "answers": ["Rona", "Run", "Rock", "Rest"],
          "subtitle": "Word with 'o' sound of /o/",
        },

        {
          "questionText": "Which word has /o/ sound?",
          "soundPath": "audio/game28/short.mp3",
          "correctAnswer": "Short",
          "answers": ["Short", "Shine", "Shell", "Shake"],
          "subtitle": "Word with 'o' sound of /o/",
        },


      ],

    29: [ // Lesson 29
      {
        "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/game29/cow.mp3",
        "correctAnswer": "Cow",
        "answers": ["Cow", "Can", "Cup", "Cast"],
        "subtitle": "Word with 'ow' sound /aw/",
      },
      {
        "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/game29/town.mp3",
        "correctAnswer": "Town",
        "answers": ["Time", "Town", "Tie", "Tied"],
        "subtitle": "Word with 'ow' sound /aw/",
      },
      {
        "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/game29/power.mp3",
        "correctAnswer": "Power",
        "answers": ["Pan", "Post", "Power", "Pack"],
        "subtitle": "Word with 'ow' sound /aw/",
      },
      {
        "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/game29/clown.mp3",
        "correctAnswer": "Clown",
        "answers": ["Clutch", "Clay", "Claim", "Clown"],
        "subtitle": "Word with 'ow' sound /aw/",
      },
      {
        "questionText": "Which word has the /aw/ sound?",
        "soundPath": "audio/game29/gown.mp3",
        "correctAnswer": "Gown",
        "answers": ["Game", "Guest", "Gown", "Gas"],
        "subtitle": "Word with 'ow' sound /aw/",
      }
    ],

    30: [ // Lesson 30
      {
        "questionText": "Which word begins with the /bl/ sound?",
        "soundPath": "audio/game30/Blade.mp3",
        "correctAnswer": "Blade",
        "answers": ["Blade", "Bus", "Ben Ten", "Boy Sing"],
        "subtitle": "Consonant Blend /bl/",
      },
      {
        "questionText": "Which word begins with the /bl/ sound?",
        "soundPath": "audio/game30/Blush.mp3",
        "correctAnswer": "Blush",
        "answers": ["Blush", "Boy", "Ben", "Boss"],
        "subtitle": "Consonant Blend /bl/",
      },
      {
        "questionText": "Which word begins with the /bl/ sound?",
        "soundPath": "audio/game30/Blast.mp3",
        "correctAnswer": "Blast",
        "answers": ["Boy", "Blast", "Ben", "Boss"],
        "subtitle": "Consonant Blend /bl/",
      },
      {
        "questionText": "Which word begins with the /bl/ sound?",
        "soundPath": "audio/game30/Bless Blade.mp3",
        "correctAnswer": "Bless Blade",
        "answers": ["Base Basic", "Bird Bite", "Brian Boy", "Bless Blade"],
        "subtitle": "Consonant Blend /bl/",
      },
      {
        "questionText": "Which word begins with the /bl/ sound?",
        "soundPath": "audio/game30/Bland.mp3",
        "correctAnswer": "Bland Blast",
        "answers": ["Bake Bay", "Bland Blast", "Bike Buy", "Book Bake"],
        "subtitle": "Consonant Blend /bl/",
      },
    ],

    31: [ // Lesson 10
        {
          "questionText": "Which word begins with the /br/ sound?",
          "soundPath": "audio/game31/brace.mp3",
          "correctAnswer": "Brace",
          "answers": ["Brace", "Bed", "Bake", "Ball"],
          "subtitle": "Consonant Blend /br/",
        },

        {
          "questionText": "Which word begins with the /br/ sound?",
          "soundPath": "audio/game31/breast.mp3",
          "correctAnswer": "Breast",
          "answers": ["Bag", "Bed", "Breast", "Ball"],
          "subtitle": "Consonant Blend /br/",
        },

        {
          "questionText": "Which word begins with the /br/ sound?",
          "soundPath": "audio/game31/bridge.mp3",
          "correctAnswer": "Bridge",
          "answers": ["Bus", "Bed", "Bake", "Bridge"],
          "subtitle": "Consonant Blend /br/",
        },

        {
          "questionText": "Which word begins with the /br/ sound?",
          "soundPath": "audio/game31/bright.mp3",
          "correctAnswer": "Bright",
          "answers": ["Bag", "Bed", "Bright", "Ball"],
          "subtitle": "Consonant Blend /br/",
        },

        {
          "questionText": "Which word begins with the /br/ sound?",
          "soundPath": "audio/game31/brown.mp3",
          "correctAnswer": "Brown",
          "answers": ["Back", "Brown", "Bake", "Ball"],
          "subtitle": "Consonant Blend /br/",
        },

      ],

      32: [ // Lesson 10
        {
          "questionText": "Which word begins with the /ch/ sound?",
          "soundPath": "audio/game32/chair.mp3",
          "correctAnswer": "Chair",
          "answers": ["Chair", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /ch/",
        },

        {
          "questionText": "Which word begins with the /ch/ sound?",
          "soundPath": "audio/game32/check.mp3",
          "correctAnswer": "Check",
          "answers": ["Check", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /ch/",
        },

        {
          "questionText": "Which word begins with the /ch/ sound?",
          "soundPath": "audio/game32/cheek.mp3",
          "correctAnswer": "Cheek",
          "answers": ["Cheek", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /ch/",
        },

        {
          "questionText": "Which word begins with the /ch/ sound?",
          "soundPath": "audio/game32/cheer.mp3",
          "correctAnswer": "Cheer",
          "answers": ["Cheer", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /ch/",
        },

        {
          "questionText": "Which word begins with the /ch/ sound?",
          "soundPath": "audio/game32/cheese.mp3",
          "correctAnswer": "Cheese",
          "answers": ["Cheese", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /ch/",
        },

      ],

      33: [ // Lesson 10
        {
          "questionText": "Which word begins with the /cl/ sound?",
          "soundPath": "audio/game33/clap.mp3",
          "correctAnswer": "Clap",
          "answers": ["Clap", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /cl/",
        },

        {
          "questionText": "Which word begins with the /cl/ sound?",
          "soundPath": "audio/game33/claw.mp3",
          "correctAnswer": "Claw",
          "answers": ["Claw", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /cl/",
        },

        {
          "questionText": "Which word begins with the /cl/ sound?",
          "soundPath": "audio/game33/clean.mp3",
          "correctAnswer": "Clean",
          "answers": ["Clean", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /cl/",
        },

        {
          "questionText": "Which word begins with the /cl/ sound?",
          "soundPath": "audio/game33/click.mp3",
          "correctAnswer": "Click",
          "answers": ["Click", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /cl/",
        },

        {
          "questionText": "Which word begins with the /cl/ sound?",
          "soundPath": "audio/game33/clog.mp3",
          "correctAnswer": "Clog",
          "answers": ["Clog", "Cast", "Cut", "Cold"],
          "subtitle": "Consonant Blend /cl/",
        },

      ],

      34: [ // Lesson 10
        {
          "questionText": "Which word begins with the /cr/ sound?",
          "soundPath": "audio/game34/crane.mp3",
          "correctAnswer": "Crane",
          "answers": ["Cast", "Crane", "Clog", "Cold"],
          "subtitle": "Consonant Blend /cr/",
        },

        {
          "questionText": "Which word begins with the /cr/ sound?",
          "soundPath": "audio/game34/crate.mp3",
          "correctAnswer": "Crate",
          "answers": ["Cast", "Crate", "Clog", "Cold"],
          "subtitle": "Consonant Blend /cr/",
        },

        {
          "questionText": "Which word begins with the /cr/ sound?",
          "soundPath": "audio/game34/craze.mp3",
          "correctAnswer": "Craze",
          "answers": ["Cast", "Craze", "Clog", "Cold"],
          "subtitle": "Consonant Blend /cr/",
        },

        {
          "questionText": "Which word begins with the /cr/ sound?",
          "soundPath": "audio/game34/creek.mp3",
          "correctAnswer": "Creek",
          "answers": ["Cast", "Creek", "Clog", "Cold"],
          "subtitle": "Consonant Blend /cr/",
        },

        {
          "questionText": "Which word begins with the /cr/ sound?",
          "soundPath": "audio/game34/croak.mp3",
          "correctAnswer": "Croak",
          "answers": ["Cast", "Croak", "Clog", "Cold"],
          "subtitle": "Consonant Blend /cr/",
        },

      ],

      35: [ // Lesson 10
        {
          "questionText": "Which word begins with the /dr/ sound?",
          "soundPath": "audio/game35/draft.mp3",
          "correctAnswer": "Draft",
          "answers": ["Dog", "Deal", "Draft", "Dive"],
          "subtitle": "Consonant Blend /dr/",
        },

        {
          "questionText": "Which word begins with the /dr/ sound?",
          "soundPath": "audio/game35/dredge.mp3",
          "correctAnswer": "Dredge",
          "answers": ["Dog", "Deal", "Dredge", "Dive"],
          "subtitle": "Consonant Blend /dr/",
        },

        {
          "questionText": "Which word begins with the /dr/ sound?",
          "soundPath": "audio/game35/dribble.mp3",
          "correctAnswer": "Dribble",
          "answers": ["Dog", "Deal", "Dribble", "Dive"],
          "subtitle": "Consonant Blend /dr/",
        },

        {
          "questionText": "Which word begins with the /dr/ sound?",
          "soundPath": "audio/game35/drug.mp3",
          "correctAnswer": "Drug",
          "answers": ["Dog", "Deal", "Drug", "Dive"],
          "subtitle": "Consonant Blend /dr/",
        },

        {
          "questionText": "Which word begins with the /dr/ sound?",
          "soundPath": "audio/game35/dry.mp3",
          "correctAnswer": "Dry",
          "answers": ["Dog", "Deal", "Dry", "Dive"],
          "subtitle": "Consonant Blend /dr/",
        },

      ],

      36: [ // Lesson 10
        {
          "questionText": "Which word begins with the /fl/ sound?",
          "soundPath": "audio/game36/flake.mp3",
          "correctAnswer": "Flake",
          "answers": ["Fast", "Feel", "Fit", "Flake"],
          "subtitle": "Consonant Blend /fl/",
        },

        {
          "questionText": "Which word begins with the /fl/ sound?",
          "soundPath": "audio/game36/flask.mp3",
          "correctAnswer": "Flask",
          "answers": ["Fast", "Feel", "Fit", "Flask"],
          "subtitle": "Consonant Blend /fl/",
        },

        {
          "questionText": "Which word begins with the /fl/ sound?",
          "soundPath": "audio/game36/flat.mp3",
          "correctAnswer": "Flat",
          "answers": ["Fast", "Feel", "Fit", "Flat"],
          "subtitle": "Consonant Blend /fl/",
        },

        {
          "questionText": "Which word begins with the /fl/ sound?",
          "soundPath": "audio/game36/fledge.mp3",
          "correctAnswer": "Fledge",
          "answers": ["Fast", "Feel", "Fit", "Fledge"],
          "subtitle": "Consonant Blend /fl/",
        },

        {
          "questionText": "Which word begins with the /fl/ sound?",
          "soundPath": "audio/game36/flood.mp3",
          "correctAnswer": "Flood",
          "answers": ["Fast", "Feel", "Fit", "Flood"],
          "subtitle": "Consonant Blend /fl/",
        },

      ],

      37: [ // Lesson 10
        {
          "questionText": "Which word begins with the /fr/ sound?",
          "soundPath": "audio/game37/fraction.mp3",
          "correctAnswer": "Fraction",
          "answers": ["Fraction", "Fast", "Feel", "Fit"],
          "subtitle": "Consonant Blend /fr/",
        },

        {
          "questionText": "Which word begins with the /fr/ sound?",
          "soundPath": "audio/game37/frail.mp3",
          "correctAnswer": "Frail",
          "answers": ["Frail", "Fast", "Feel", "Fit"],
          "subtitle": "Consonant Blend /fr/",
        },

        {
          "questionText": "Which word begins with the /fr/ sound?",
          "soundPath": "audio/game37/frank.mp3",
          "correctAnswer": "Frank",
          "answers": ["Frank", "Fast", "Feel", "Fit"],
          "subtitle": "Consonant Blend /fr/",
        },

        {
          "questionText": "Which word begins with the /fr/ sound?",
          "soundPath": "audio/game37/frequent.mp3",
          "correctAnswer": "Frequent",
          "answers": ["Frequent", "Fast", "Feel", "Fit"],
          "subtitle": "Consonant Blend /fr/",
        },

        {
          "questionText": "Which word begins with the /fr/ sound?",
          "soundPath": "audio/game37/fresh.mp3",
          "correctAnswer": "Fresh",
          "answers": ["Fresh", "Fast", "Feel", "Fit"],
          "subtitle": "Consonant Blend /fr/",
        },

      ],

      38: [ // Lesson 10
        {
          "questionText": "Which word begins with the /gl/ sound?",
          "soundPath": "audio/game38/glad.mp3",
          "correctAnswer": "Glad",
          "answers": ["Go", "Glad", "Greet", "Guess"],
          "subtitle": "Consonant Blend /ql/",
        },

        {
          "questionText": "Which word begins with the /gl/ sound?",
          "soundPath": "audio/game38/glade.mp3",
          "correctAnswer": "Glade",
          "answers": ["Go", "Glade", "Greet", "Guess"],
          "subtitle": "Consonant Blend /ql/",
        },

        {
          "questionText": "Which word begins with the /gl/ sound?",
          "soundPath": "audio/game38/glance.mp3",
          "correctAnswer": "Glance",
          "answers": ["Go", "Glance", "Greet", "Guess"],
          "subtitle": "Consonant Blend /ql/",
        },

        {
          "questionText": "Which word begins with the /gl/ sound?",
          "soundPath": "audio/game38/glare.mp3",
          "correctAnswer": "Glare",
          "answers": ["Go", "Glare", "Greet", "Guess"],
          "subtitle": "Consonant Blend /ql/",
        },

        {
          "questionText": "Which word begins with the /gl/ sound?",
          "soundPath": "audio/game38/glass.mp3",
          "correctAnswer": "Glass",
          "answers": ["Go", "Glass", "Greet", "Guess"],
          "subtitle": "Consonant Blend /ql/",
        },

      ],

      39: [ // Lesson 10
        {
          "questionText": "Which word begins with the /gr/ sound?",
          "soundPath": "audio/game39/grass.mp3",
          "correctAnswer": "Grass",
          "answers": ["Gas", "Git", "Grass", "Goat"],
          "subtitle": "Consonant Blend /gr/",
        },

        {
          "questionText": "Which word begins with the /gr/ sound?",
          "soundPath": "audio/game39/grave.mp3",
          "correctAnswer": "Grave",
          "answers": ["Gas", "Git", "Grave", "Goat"],
          "subtitle": "Consonant Blend /gr/",
        },

        {
          "questionText": "Which word begins with the /gr/ sound?",
          "soundPath": "audio/game39/grease.mp3",
          "correctAnswer": "Grease",
          "answers": ["Gas", "Git", "Grease", "Goat"],
          "subtitle": "Consonant Blend /gr/",
        },

        {
          "questionText": "Which word begins with the /gr/ sound?",
          "soundPath": "audio/game39/grocery.mp3",
          "correctAnswer": "Grocery",
          "answers": ["Gas", "Git", "Grocery", "Goat"],
          "subtitle": "Consonant Blend /gr/",
        },

        {
          "questionText": "Which word begins with the /gr/ sound?",
          "soundPath": "audio/game39/grow.mp3",
          "correctAnswer": "Grow",
          "answers": ["Gas", "Git", "Grow", "Goat"],
          "subtitle": "Consonant Blend /gr/",
        },

      ],

      40: [ // Lesson 10
        {
          "questionText": "Which word begins with the /pl/ sound?",
          "soundPath": "audio/game40/plain.mp3",
          "correctAnswer": "Plain",
          "answers": ["Pass", "Pop", "Pin", "Plain"],
          "subtitle": "Consonant Blend /pl/",
        },

        {
          "questionText": "Which word begins with the /pl/ sound?",
          "soundPath": "audio/game40/plan.mp3",
          "correctAnswer": "Plan",
          "answers": ["Pass", "Pop", "Pin", "Plan"],
          "subtitle": "Consonant Blend /pl/",
        },

        {
          "questionText": "Which word begins with the /pl/ sound?",
          "soundPath": "audio/game40/plant.mp3",
          "correctAnswer": "Plant",
          "answers": ["Pass", "Pop", "Pin", "Plant"],
          "subtitle": "Consonant Blend /pl/",
        },

        {
          "questionText": "Which word begins with the /pl/ sound?",
          "soundPath": "audio/game40/plate.mp3",
          "correctAnswer": "Plate",
          "answers": ["Pass", "Pop", "Pin", "Plate"],
          "subtitle": "Consonant Blend /pl/",
        },

        {
          "questionText": "Which word begins with the /pl/ sound?",
          "soundPath": "audio/game40/please.mp3",
          "correctAnswer": "Please",
          "answers": ["Pass", "Pop", "Pin", "Please"],
          "subtitle": "Consonant Blend /pl/",
        },

      ],

      41: [ // Lesson 10
        {
          "questionText": "Which word begins with the /qu/ sound?",
          "soundPath": "audio/game41/quad.mp3",
          "correctAnswer": "Quad",
          "answers": ["Quad", "Quil", "Qoute", "Quest"],
          "subtitle": "Consonant Blend /qu/",
        },

        {
          "questionText": "Which word begins with the /qu/ sound?",
          "soundPath": "audio/game41/quake.mp3",
          "correctAnswer": "Quake",
          "answers": ["Quake", "Quil", "Qoute", "Quest"],
          "subtitle": "Consonant Blend /qu/",
        },

        {
          "questionText": "Which word begins with the /qu/ sound?",
          "soundPath": "audio/game41/quarter.mp3",
          "correctAnswer": "Quarter",
          "answers": ["Quarter", "Quil", "Qoute", "Quest"],
          "subtitle": "Consonant Blend /qu/",
        },

        {
          "questionText": "Which word begins with the /qu/ sound?",
          "soundPath": "audio/game41/quartet.mp3",
          "correctAnswer": "Quartet",
          "answers": ["Quartet", "Quil", "Qoute", "Quest"],
          "subtitle": "Consonant Blend /qu/",
        },

        {
          "questionText": "Which word begins with the /qu/ sound?",
          "soundPath": "audio/game41/quarts.mp3",
          "correctAnswer": "Quarts",
          "answers": ["Quarts", "Quil", "Qoute", "Quest"],
          "subtitle": "Consonant Blend /qu/",
        },

      ],

      42: [ // Lesson 10
        {
          "questionText": "Which word begins with the /sh/ sound?",
          "soundPath": "audio/game42/shade.mp3",
          "correctAnswer": "Shade",
          "answers": ["Sun", "Shade", "Sit", "Sound"],
          "subtitle": "Consonant Blend /sh/",
        },

        {
          "questionText": "Which word begins with the /sh/ sound?",
          "soundPath": "audio/game42/shaggy.mp3",
          "correctAnswer": "Shaggy",
          "answers": ["Sun", "Shaggy", "Sit", "Sound"],
          "subtitle": "Consonant Blend /sh/",
        },

        {
          "questionText": "Which word begins with the /sh/ sound?",
          "soundPath": "audio/game42/shake.mp3",
          "correctAnswer": "Shake",
          "answers": ["Sun", "Shake", "Sit", "Sound"],
          "subtitle": "Consonant Blend /sh/",
        },

        {
          "questionText": "Which word begins with the /sh/ sound?",
          "soundPath": "audio/game42/shark.mp3",
          "correctAnswer": "Shark",
          "answers": ["Sun", "Shark", "Sit", "Sound"],
          "subtitle": "Consonant Blend /sh/",
        },

        {
          "questionText": "Which word begins with the /sh/ sound?",
          "soundPath": "audio/game42/shine.mp3",
          "correctAnswer": "Shine",
          "answers": ["Sun", "Shine", "Sit", "Sound"],
          "subtitle": "Consonant Blend /sh/",
        },

      ],

      43: [ // Lesson 10
        {
          "questionText": "Which word begins with the /sp/ sound?",
          "soundPath": "audio/game43/spade.mp3",
          "correctAnswer": "Spade",
          "answers": ["Sun", "Shine", "Spade", "Sound"],
          "subtitle": "Consonant Blend /sp/",
        },

        {
          "questionText": "Which word begins with the /sp/ sound?",
          "soundPath": "audio/game43/sparkle.mp3",
          "correctAnswer": "Sparkle",
          "answers": ["Sun", "Shine", "Sparkle", "Sound"],
          "subtitle": "Consonant Blend /sp/",
        },

        {
          "questionText": "Which word begins with the /sp/ sound?",
          "soundPath": "audio/game43/speak.mp3",
          "correctAnswer": "Speak",
          "answers": ["Sun", "Shine", "Speak", "Sound"],
          "subtitle": "Consonant Blend /sp/",
        },

        {
          "questionText": "Which word begins with the /sp/ sound?",
          "soundPath": "audio/game43/spear.mp3",
          "correctAnswer": "Spear",
          "answers": ["Sun", "Shine", "Spear", "Sound"],
          "subtitle": "Consonant Blend /sp/",
        },

        {
          "questionText": "Which word begins with the /sp/ sound?",
          "soundPath": "audio/game43/speech.mp3",
          "correctAnswer": "Speech",
          "answers": ["Sun", "Shine", "Speech", "Sound"],
          "subtitle": "Consonant Blend /sp/",
        },

      ],

      44: [ // Lesson 10
        {
          "questionText": "Which word begins with the /st/ sound?",
          "soundPath": "audio/game44/stairs.mp3",
          "correctAnswer": "Stairs",
          "answers": ["Sun", "Shine", "Speech", "Stairs"],
          "subtitle": "Consonant Blend /st/",
        },

        {
          "questionText": "Which word begins with the /st/ sound?",
          "soundPath": "audio/game44/stall.mp3",
          "correctAnswer": "Stall",
          "answers": ["Sun", "Shine", "Speech", "Stall"],
          "subtitle": "Consonant Blend /st/",
        },

        {
          "questionText": "Which word begins with the /st/ sound?",
          "soundPath": "audio/game44/steam.mp3",
          "correctAnswer": "Steam",
          "answers": ["Sun", "Shine", "Speech", "Steam"],
          "subtitle": "Consonant Blend /st/",
        },

        {
          "questionText": "Which word begins with the /st/ sound?",
          "soundPath": "audio/game44/sting.mp3",
          "correctAnswer": "Sting",
          "answers": ["Sun", "Shine", "Speech", "Sting"],
          "subtitle": "Consonant Blend /st/",
        },

        {
          "questionText": "Which word begins with the /st/ sound?",
          "soundPath": "audio/game44/store.mp3",
          "correctAnswer": "Store",
          "answers": ["Sun", "Shine", "Speech", "Store"],
          "subtitle": "Consonant Blend /st/",
        },

      ],

      45: [ // Lesson 10
        {
          "questionText": "Which word begins with the /sw/ sound?",
          "soundPath": "audio/game45/swallow.mp3",
          "correctAnswer": "Swallow",
          "answers": ["Swallow", "Shine", "Speech", "Store"],
          "subtitle": "Consonant Blend /sw/",
        },

        {
          "questionText": "Which word begins with the /sw/ sound?",
          "soundPath": "audio/game45/swamp.mp3",
          "correctAnswer": "Swamp",
          "answers": ["Swamp", "Shine", "Speech", "Store"],
          "subtitle": "Consonant Blend /sw/",
        },

        {
          "questionText": "Which word begins with the /sw/ sound?",
          "soundPath": "audio/game45/swan.mp3",
          "correctAnswer": "Swan",
          "answers": ["Swan", "Shine", "Speech", "Store"],
          "subtitle": "Consonant Blend /sw/",
        },

        {
          "questionText": "Which word begins with the /sw/ sound?",
          "soundPath": "audio/game45/swat.mp3",
          "correctAnswer": "Swat",
          "answers": ["Swat", "Shine", "Speech", "Store"],
          "subtitle": "Consonant Blend /sw/",
        },

        {
          "questionText": "Which word begins with the /sw/ sound?",
          "soundPath": "audio/game45/sweet.mp3",
          "correctAnswer": "Sweet",
          "answers": ["Sweet", "Shine", "Speech", "Store"],
          "subtitle": "Consonant Blend /sw/",
        },

      ],

      46: [ // Lesson 10
        {
          "questionText": "Which word begins with the /tr/ sound?",
          "soundPath": "audio/game46/travel.mp3",
          "correctAnswer": "Travel",
          "answers": ["Travel", "Tea", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tr/",
        },

        {
          "questionText": "Which word begins with the /tr/ sound?",
          "soundPath": "audio/game46/treasure.mp3",
          "correctAnswer": "Treasure",
          "answers": ["Treasure", "Tea", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tr/",
        },

        {
          "questionText": "Which word begins with the /tr/ sound?",
          "soundPath": "audio/game46/treat.mp3",
          "correctAnswer": "Treat",
          "answers": ["Treat", "Tea", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tr/",
        },

        {
          "questionText": "Which word begins with the /tr/ sound?",
          "soundPath": "audio/game46/trick.mp3",
          "correctAnswer": "Trick",
          "answers": ["Trick", "Tea", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tr/",
        },

        {
          "questionText": "Which word begins with the /tr/ sound?",
          "soundPath": "audio/game46/trip.mp3",
          "correctAnswer": "Trip",
          "answers": ["Trip", "Tea", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tr/",
        },

      ],

      47: [ // Lesson 10
        {
          "questionText": "Which word begins with the /tw/ sound?",
          "soundPath": "audio/game47/twang.mp3",
          "correctAnswer": "Twang",
          "answers": ["Trip", "Twang", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tw/",
        },

        {
          "questionText": "Which word begins with the /tw/ sound?",
          "soundPath": "audio/game47/tweed.mp3",
          "correctAnswer": "Tweed",
          "answers": ["Trip", "Tweed", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tw/",
        },

        {
          "questionText": "Which word begins with the /tw/ sound?",
          "soundPath": "audio/game47/tweezers.mp3",
          "correctAnswer": "Tweezers",
          "answers": ["Trip", "Tweezers", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tw/",
        },

        {
          "questionText": "Which word begins with the /tw/ sound?",
          "soundPath": "audio/game47/twice.mp3",
          "correctAnswer": "Twice",
          "answers": ["Trip", "Twice", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tw/",
        },

        {
          "questionText": "Which word begins with the /tw/ sound?",
          "soundPath": "audio/game47/twinkle.mp3",
          "correctAnswer": "Twinkle",
          "answers": ["Trip", "Twinkle", "Tip", "Tall"],
          "subtitle": "Consonant Blend /tw/",
        },

      ],

      48: [ // Lesson 10
        {
          "questionText": "Which word begins with the /wh/ sound?",
          "soundPath": "audio/game48/wharf.mp3",
          "correctAnswer": "Wharf",
          "answers": ["Wet", "Wall", "Wharf", "Wish"],
          "subtitle": "Consonant Blend /wh/",
        },

        {
          "questionText": "Which word begins with the /wh/ sound?",
          "soundPath": "audio/game48/what.mp3",
          "correctAnswer": "What",
          "answers": ["Wet", "Wall", "What", "Wish"],
          "subtitle": "Consonant Blend /wh/",
        },

        {
          "questionText": "Which word begins with the /wh/ sound?",
          "soundPath": "audio/game48/when.mp3",
          "correctAnswer": "When",
          "answers": ["Wet", "Wall", "When", "Wish"],
          "subtitle": "Consonant Blend /wh/",
        },

        {
          "questionText": "Which word begins with the /wh/ sound?",
          "soundPath": "audio/game48/whine.mp3",
          "correctAnswer": "Whine",
          "answers": ["Wet", "Wall", "Whine", "Wish"],
          "subtitle": "Consonant Blend /wh/",
        },

        {
          "questionText": "Which word begins with the /wh/ sound?",
          "soundPath": "audio/game48/whisk.mp3",
          "correctAnswer": "Whisk",
          "answers": ["Wet", "Wall", "Whisk", "Wish"],
          "subtitle": "Consonant Blend /wh/",
        },

      ],

      49: [ // Lesson 10
        {
          "questionText": "Which word begins with the /str/ sound?",
          "soundPath": "audio/game49/strain.mp3",
          "correctAnswer": "Strain",
          "answers": ["Strain", "Sit", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /str/",
        },

        {
          "questionText": "Which word begins with the /str/ sound?",
          "soundPath": "audio/game49/strand.mp3",
          "correctAnswer": "Strand",
          "answers": ["Strand", "Sit", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /str/",
        },

        {
          "questionText": "Which word begins with the /str/ sound?",
          "soundPath": "audio/game49/stranger.mp3",
          "correctAnswer": "Stranger",
          "answers": ["Stranger", "Sit", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /str/",
        },

        {
          "questionText": "Which word begins with the /str/ sound?",
          "soundPath": "audio/game49/strike.mp3",
          "correctAnswer": "Strike",
          "answers": ["Strike", "Sit", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /str/",
        },

        {
          "questionText": "Which word begins with the /str/ sound?",
          "soundPath": "audio/game49/stroke.mp3",
          "correctAnswer": "Stroke",
          "answers": ["Stroke", "Sit", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /str/",
        },

      ],

      50: [ // Lesson 10
        {
          "questionText": "Which word begins with the /spl/ sound?",
          "soundPath": "audio/game50/splatter.mp3",
          "correctAnswer": "Splatter",
          "answers": ["Stroke", "Splatter", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /spl/",
        },

        {
          "questionText": "Which word begins with the /spl/ sound?",
          "soundPath": "audio/game50/spleen.mp3",
          "correctAnswer": "Spleen",
          "answers": ["Stroke", "Spleen", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /spl/",
        },

        {
          "questionText": "Which word begins with the /spl/ sound?",
          "soundPath": "audio/game50/splendid.mp3",
          "correctAnswer": "Splendid",
          "answers": ["Stroke", "Splendid", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /spl/",
        },

        {
          "questionText": "Which word begins with the /spl/ sound?",
          "soundPath": "audio/game50/splice.mp3",
          "correctAnswer": "Splice",
          "answers": ["Stroke", "Splice", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /spl/",
        },

        {
          "questionText": "Which word begins with the /spl/ sound?",
          "soundPath": "audio/game50/split.mp3",
          "correctAnswer": "Split",
          "answers": ["Stroke", "Split", "Sold", "Seek"],
          "subtitle": "Consonant Cluster /spl/",
        },

      ],

      51: [ // Lesson 10
        {
          "questionText": "Which word begins with the /scr/ sound?",
          "soundPath": "audio/game51/scramble.mp3",
          "correctAnswer": "Scramble",
          "answers": ["Stroke", "Split", "Scramble", "Seek"],
          "subtitle": "Consonant Cluster /scr/",
        },

        {
          "questionText": "Which word begins with the /scr/ sound?",
          "soundPath": "audio/game51/scrap.mp3",
          "correctAnswer": "Scrap",
          "answers": ["Stroke", "Split", "Scrap", "Seek"],
          "subtitle": "Consonant Cluster /scr/",
        },

        {
          "questionText": "Which word begins with the /scr/ sound?",
          "soundPath": "audio/game51/scrape.mp3",
          "correctAnswer": "Scrape",
          "answers": ["Stroke", "Split", "Scrape", "Seek"],
          "subtitle": "Consonant Cluster /scr/",
        },

        {
          "questionText": "Which word begins with the /scr/ sound?",
          "soundPath": "audio/game51/scratch.mp3",
          "correctAnswer": "Scratch",
          "answers": ["Stroke", "Split", "Scratch", "Seek"],
          "subtitle": "Consonant Cluster /scr/",
        },

        {
          "questionText": "Which word begins with the /scr/ sound?",
          "soundPath": "audio/game51/screw.mp3",
          "correctAnswer": "Screw",
          "answers": ["Stroke", "Split", "Screw", "Seek"],
          "subtitle": "Consonant Cluster /scr/",
        },

      ],

      52: [ // Lesson 10
        {
          "questionText": "Which word ends with the /lt/ sound?",
          "soundPath": "audio/game52/colt.mp3",
          "correctAnswer": "Colt",
          "answers": ["Can", "Cash", "Cold", "Colt"],
          "subtitle": "Final Consonant /lt/",
        },
        
        {
          "questionText": "Which word ends with the /lt/ sound?",
          "soundPath": "audio/game52/dealt.mp3",
          "correctAnswer": "Dealt",
          "answers": ["Dan", "Dash", "Deal", "Dealt"],
          "subtitle": "Final Consonant /lt/",
        },

        {
          "questionText": "Which word ends with the /lt/ sound?",
          "soundPath": "audio/game52/kilt.mp3",
          "correctAnswer": "Kilt",
          "answers": ["Kite", "Kiss", "Key", "Kilt"],
          "subtitle": "Final Consonant /lt/",
        },

        {
          "questionText": "Which word ends with the /lt/ sound?",
          "soundPath": "audio/game52/melt.mp3",
          "correctAnswer": "Melt",
          "answers": ["Mice", "Man", "Mess", "Melt"],
          "subtitle": "Final Consonant /lt/",
        },

        {
          "questionText": "Which word ends with the /lt/ sound?",
          "soundPath": "audio/game52/quilt.mp3",
          "correctAnswer": "Quilt",
          "answers": ["Quan", "Quiz", "Queen", "Quilt"],
          "subtitle": "Final Consonant /lt/",
        },

      ],

      53: [ // Lesson 10
        {
          "questionText":"Which word ends with the /ft/ sound?",
          "soundPath": "audio/game53/craft.mp3",
          "correctAnswer": "Craft",
          "answers": ["Craft", "Can", "Cast", "Cold"],
          "subtitle": "Final Consonant /ft/",
        },

        {
          "questionText":"Which word ends with the /ft/ sound?",
          "soundPath": "audio/game53/draft.mp3",
          "correctAnswer": "Draft",
          "answers": ["Draft", "Drug", "Doll", "Dad"],
          "subtitle": "Final Consonant /ft/",
        },

        {
          "questionText":"Which word ends with the /ft/ sound?",
          "soundPath": "audio/game53/lift.mp3",
          "correctAnswer": "Lift",
          "answers": ["Lift", "Let", "Look", "Like"],
          "subtitle": "Final Consonant /ft/",
        },

        {
          "questionText":"Which word ends with the /ft/ sound?",
          "soundPath": "audio/game53/raft.mp3",
          "correctAnswer": "Raft",
          "answers": ["Raft", "Ran", "Run", "Rise"],
          "subtitle": "Final Consonant /ft/",
        },

        {
          "questionText":"Which word ends with the /ft/ sound?",
          "soundPath": "audio/game53/thrift.mp3",
          "correctAnswer": "Thrift",
          "answers": ["Thrift", "Trust", "Take", "Time"],
          "subtitle": "Final Consonant /ft/",
        },

      ],

      54: [ // Lesson 10
        {
          "questionText": "Which word ends with the /ct/ sound?",
          "soundPath": "audio/game54/addict.mp3",
          "correctAnswer": "Addict",
          "answers": ["As", "Addict", "Apple", "Ant"],
          "subtitle": "Final Consonant /ct/",
        },

        {
          "questionText": "Which word ends with the /ct/ sound?",
          "soundPath": "audio/game54/collect.mp3",
          "correctAnswer": "Collect",
          "answers": ["Cold", "Collect", "Cat", "Can"],
          "subtitle": "Final Consonant /ct/",
        },

        {
          "questionText": "Which word ends with the /ct/ sound?",
          "soundPath": "audio/game54/connect.mp3",
          "correctAnswer": "Connect",
          "answers": ["Cold", "Connect", "Cat", "Can"],
          "subtitle": "Final Consonant /ct/",
        },

        {
          "questionText": "Which word ends with the /ct/ sound?",
          "soundPath": "audio/game54/correct.mp3",
          "correctAnswer": "Correct",
          "answers": ["Cold", "Correct", "Cat", "Can"],
          "subtitle": "Final Consonant /ct/",
        },

        {
          "questionText": "Which word ends with the /ct/ sound?",
          "soundPath": "audio/game54/effect.mp3",
          "correctAnswer": "Effect",
          "answers": ["Eat", "Effect", "East", "Ear"],
          "subtitle": "Final Consonant /ct/",
        },


      ],

      55: [ // Lesson 10
        {
          "questionText": "Which word ends with the /rt/ sound?",
          "soundPath": "audio/game55/cart.mp3",
          "correctAnswer": "Cart",
          "answers": ["Call", "Can", "Cart", "Cat"],
          "subtitle": "Final Consonant /rt/",
        },

        {
          "questionText": "Which word ends with the /rt/ sound?",
          "soundPath": "audio/game55/heart.mp3",
          "correctAnswer": "Heart",
          "answers": ["Him", "Her", "Heart", "Hat"],
          "subtitle": "Final Consonant /rt/",
        },

        {
          "questionText": "Which word ends with the /rt/ sound?",
          "soundPath": "audio/game55/part.mp3",
          "correctAnswer": "Part",
          "answers": ["Past", "Pill", "Part", "Plan"],
          "subtitle": "Final Consonant /rt/",
        },

        {
          "questionText": "Which word ends with the /rt/ sound?",
          "soundPath": "audio/game55/port.mp3",
          "correctAnswer": "Port",
          "answers": ["Past", "Pill", "Port", "Plan"],
          "subtitle": "Final Consonant /rt/",
        },

        {
          "questionText": "Which word ends with the /rt/ sound?",
          "soundPath": "audio/game55/quart.mp3",
          "correctAnswer": "Quart",
          "answers": ["Queen", "Quill", "Quart", "Quiz"],
          "subtitle": "Final Consonant /rt/",
        },

      ],

      56: [ // Lesson 10
        {
          "questionText": "Which word ends with the /nt/ sound?",
          "soundPath": "audio/game56/cent.mp3",
          "correctAnswer": "Cent",
          "answers": ["Call", "Can", "Cat", "Cent"],
          "subtitle": "Final Consonant /nt/",
        },

        {
          "questionText": "Which word ends with the /nt/ sound?",
          "soundPath": "audio/game56/faint.mp3",
          "correctAnswer": "Cent",
          "answers": ["Fall", "Fan", "Fat", "Faint"],
          "subtitle": "Final Consonant /nt/",
        },

        {
          "questionText": "Which word ends with the /nt/ sound?",
          "soundPath": "audio/game56/hunt.mp3",
          "correctAnswer": "Hunt",
          "answers": ["Hall", "Hen", "Hat", "Hunt"],
          "subtitle": "Final Consonant /nt/",
        },

        {
          "questionText": "Which word ends with the /nt/ sound?",
          "soundPath": "audio/game56/paint.mp3",
          "correctAnswer": "Paint",
          "answers": ["Past", "Press", "Pick", "Paint"],
          "subtitle": "Final Consonant /nt/",
        },

        {
          "questionText": "Which word ends with the /nt/ sound?",
          "soundPath": "audio/game56/point.mp3",
          "correctAnswer": "Point",
          "answers": ["Past", "Press", "Pick", "Point"],
          "subtitle": "Final Consonant /nt/",
        },

      ],

      57: [ // Lesson 10
        {
          "questionText": "Which word ends with the /nk/ sound?",
          "soundPath": "audio/game57/bank.mp3",
          "correctAnswer": "Bank",
          "answers": ["Bank", "Ban", "Bus", "Bag"],
          "subtitle": "Final Consonant /nk/",
        },

        {
          "questionText": "Which word ends with the /nk/ sound?",
          "soundPath": "audio/game57/blank.mp3",
          "correctAnswer": "Blank",
          "answers": ["Blank", "Ban", "Bus", "Bag"],
          "subtitle": "Final Consonant /nk/",
        },

        {
          "questionText": "Which word ends with the /nk/ sound?",
          "soundPath": "audio/game57/dunk.mp3",
          "correctAnswer": "Dunk",
          "answers": ["Dunk", "Dad", "Doll", "Dog"],
          "subtitle": "Final Consonant /nk/",
        },

        {
          "questionText": "Which word ends with the /nk/ sound?",
          "soundPath": "audio/game57/flunk.mp3",
          "correctAnswer": "Flunk",
          "answers": ["Flunk", "Fan", "Four", "Fog"],
          "subtitle": "Final Consonant /nk/",
        },

        {
          "questionText": "Which word ends with the /nk/ sound?",
          "soundPath": "audio/game57/rank.mp3",
          "correctAnswer": "Rank",
          "answers": ["Rank", "Run", "Roll", "Rat"],
          "subtitle": "Final Consonant /nk/",
        },

      ],

      58: [ // Lesson 10
        {
          "questionText": "Which word ends with the /rk/ sound?",
          "soundPath": "audio/game58/bark.mp3",
          "correctAnswer": "Bark",
          "answers": ["Bus", "Bark", "Ban", "Bag"],
          "subtitle": "Final Consonant /rk/",
        },

        {
          "questionText": "Which word ends with the /rk/ sound?",
          "soundPath": "audio/game58/cork.mp3",
          "correctAnswer": "Cork",
          "answers": ["Cat", "Cork", "Can", "Catch"],
          "subtitle": "Final Consonant /rk/",
        },

        {
          "questionText": "Which word ends with the /rk/ sound?",
          "soundPath": "audio/game58/hark.mp3",
          "correctAnswer": "Hark",
          "answers": ["Hat", "Hark", "Han", "Hug"],
          "subtitle": "Final Consonant /rk/",
        },

        {
          "questionText": "Which word ends with the /rk/ sound?",
          "soundPath": "audio/game58/lark.mp3",
          "correctAnswer": "Lark",
          "answers": ["Last", "Lark", "Late", "Let"],
          "subtitle": "Final Consonant /rk/",
        },

        {
          "questionText": "Which word ends with the /rk/ sound?",
          "soundPath": "audio/game58/lurk.mp3",
          "correctAnswer": "Lurk",
          "answers": ["Last", "Lurk", "Late", "Let"],
          "subtitle": "Final Consonant /rk/",
        },

      ],

      59: [ // Lesson 10
        {
          "questionText": "Which word ends with the /sk/ sound?",
          "soundPath": "audio/game59/ask.mp3",
          "correctAnswer": "Ask",
          "answers": ["Aim", "Ant", "Ask", "Aunt"],
          "subtitle": "Final Consonant /sk/",
        },

        {
          "questionText": "Which word ends with the /sk/ sound?",
          "soundPath": "audio/game59/cask.mp3",
          "correctAnswer": "Cask",
          "answers": ["Cat", "Can", "Cask", "Call"],
          "subtitle": "Final Consonant /sk/",
        },

        {
          "questionText": "Which word ends with the /sk/ sound?",
          "soundPath": "audio/game59/desk.mp3",
          "correctAnswer": "Desk",
          "answers": ["Deal", "Dim", "Desk", "Doll"],
          "subtitle": "Final Consonant /sk/",
        },

        {
          "questionText": "Which word ends with the /sk/ sound?",
          "soundPath": "audio/game59/flask.mp3",
          "correctAnswer": "Flask",
          "answers": ["Fell", "Feel", "Flask", "Fall"],
          "subtitle": "Final Consonant /sk/",
        },

        {
          "questionText": "Which word ends with the /sk/ sound?",
          "soundPath": "audio/game59/husk.mp3",
          "correctAnswer": "Husk",
          "answers": ["Hunt", "Hall", "Husk", "Hug"],
          "subtitle": "Final Consonant /sk/",
        },

      ],

      60: [ // Lesson 10
        {
          "questionText": "Which word ends with the /nd/ sound?",
          "soundPath": "audio/game60/band.mp3",
          "correctAnswer": "Band",
          "answers": ["Bus", "Book", "Bake", "Band"],
          "subtitle": "Final Consonant /nd/",
        },

        {
          "questionText": "Which word ends with the /nd/ sound?",
          "soundPath": "audio/game60/bind.mp3",
          "correctAnswer": "Bind",
          "answers": ["Bus", "Book", "Bake", "Bind"],
          "subtitle": "Final Consonant /nd/",
        },

        {
          "questionText": "Which word ends with the /nd/ sound?",
          "soundPath": "audio/game60/blind.mp3",
          "correctAnswer": "Blind",
          "answers": ["Bus", "Book", "Bake", "Blind"],
          "subtitle": "Final Consonant /nd/",
        },

        {
          "questionText": "Which word ends with the /nd/ sound?",
          "soundPath": "audio/game60/blond.mp3",
          "correctAnswer": "Blond",
          "answers": ["Bus", "Book", "Bake", "Blond"],
          "subtitle": "Final Consonant /nd/",
        },

        {
          "questionText": "Which word ends with the /nd/ sound?",
          "soundPath": "audio/game60/found.mp3",
          "correctAnswer": "Found",
          "answers": ["Feel", "Fat", "Fake", "Found"],
          "subtitle": "Final Consonant /nd/",
        },

      ],
  };

  static GameContent getGameContent(int lessonId, int questionIndex) {
    final questions = _lessonQuestions[lessonId];

    if (questions != null && questionIndex < questions.length) {
      final question = questions[questionIndex];
      return GameContent(
        questionText: question["questionText"],
        correctAnswer: question["correctAnswer"],
        answers: question["answers"],
        soundPath: question["soundPath"],
        subtitle: question["subtitle"],
      );
    } else {
      return GameContent(
        questionText: 'Question Not Found',
        correctAnswer: 'No Answer',
        answers: ['Answer Not Found'],
        soundPath: 'Sound Not Found',
        subtitle: 'Subtitle Not Found',
      );
    }
  }

}
