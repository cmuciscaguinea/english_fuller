//lesson_data.dart

Map<String, dynamic> getLessonDetails(int lessonNumber) {
    var lessonContent = {
      
      // Vowel Sound
      1: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Alphabets Sounds',
        'words': ['Aa', 'Bb', 'Cc', 'Dd', 'Ee', 'Ff', 'Gg', 'Hh', 'Ii', 'Jj', 'Kk', 'Ll', 'Mm', 'Nn', 'Oo', 'Pp', 'Qq', 'Rr', 'Ss', 'Tt', 'Uu', 'Vv', 'Ww', 'Xx', 'Yy', 'Zz'],
        // 'timings': [1500, 2500, 3400, 4300, 5200],
        // 'audioDuration': 5400, // Total duration of audio in milliseconds
        
      },

      2: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Vowel Sound (Aa)',
        'words': ['Bad', 'Dad', 'Lad', 'Bag', 'Nag', 'Wag', 'Rat', 'Mat', 'Fat', 'Gas', 'Has', 'Was', 'Cap', 'Gap', 'Map'],
      },

      3: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Vowel Sound (Ee)',
        'words': ['Bed', 'Red', 'Led', 'Beg', 'Leg', 'Peg', 'Gem', 'Bem', 'Hem', 'Pen', 'Ten', 'Yen', 'Get', 'Net', 'Set'],
      },

      4: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Vowel Sound (Ii)',
        'words': ['Bid', 'Lid', 'Kid',
          'Big', 'Gig', 'Wig',
          'Dim', 'Him', 'Jim',
          'Bin', 'Pin', 'Sin',
          'Dip', 'Lip', 'Sip'],
      },

      5: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Vowel Sound (Oo)',
        'words': ['Bog', 'Cog', 'Mog',
          'God', 'Nod', 'Rod',
          'Log', 'Hog', 'Jog',
          'Dot', 'Got', 'Hot',
          'Cot', 'Mot', 'Pot'],
      },

      6: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Vowel Sound (Uu)',
        'words': ['Cug', 'Rug', 'Tug',
          'Bud', 'Sud', 'Mud',
          'Bum', 'Hum', 'Sum',
          'Bun', 'Fun', 'Run',
          'But', 'Hut', 'Rut'],
      },

      // 7: {
      //   'title': 'Lesson $lessonNumber',
      //   'subTitle': 'Hickory Dickory Dock',
      //   'words': ['Hickory, dickory, dock. The mouse ran up the clock. The clock struck one. The mouse ran down. Hickory, dickory, dock!'],
       
      // },

      7: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Hickory Dickory Dock',
        'words': ['Hickory, dickory, dock. The mouse ran up the clock. The clock struck one. The mouse ran down. Hickory, dickory, dock!'],
        'timings': [ 500, 600, 1000,   2300, 2500, 2900,  3000, 3600, 4000,   4900, 5500, 5800, 6000,   7000, 7400,  7900, 8100,     9500,  9900, 10400],
        'audioDuration': 11200, // Total duration of audio in milliseconds
      },



      8: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Incy Wincy Spider',
        'words': ['Incy Wincy Spider climb up the water spout, Down came the rain and washed for wincy out. Out came the sunshine and dried up all the rain, And Incy Wincy spider climbed up the spout again.'],
        'timings': [ 800, 1200, 2100, 3300, 3700, 4000, 4300, 5000, 5700, 6500, 7000, 7700, 8000, 8500, 9000, 10000, 10500, 12000, 12500, 13000, 13500, 14000, 14200, 14500, 14700, 15000, 15300,
        16000, 16800, 17200, 17800, 18000,
        19000, 19900, 20500, 21000],
        'audioDuration': 21600, // Total duration of audio in milliseconds
      },

      9: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Miss Polly had a Dolly',
        'words': ['Miss Polly had a dolly who was sick, sick, sick. So, she phoned for the doctor to be quick, quick, quick. The doctor came with his bag and hat And knocked at the door with a rat-a-tat-tat. He looked at the dolly and shook his head And he said “Miss Polly, put her straight to bed!” He wrote a pad for a pill, pill, pill “I’ll be back in the morning with my bill, bill, bill."'],
        'timings': [500, 900, 1300, 1500, 1900, 2400, 2700, 3000, 4000, 5000,
        6000, 6200, 6800, 7000, 7300, 7800, 8000, 8300, 8700, 9000, 9500, 10300,

        10500, 11100, 11500, 11800, 12000, 12700, 13100, 13700, 14400, 15100, 15400, 
        16000, 16200, 16300, 17000, 17500, 18400, 18700, 18900, 19000, 19100, 19700, 20200, 20900, 21200, 21900, 
        22300, 22900, 23600, 24300, 24700, 24900, 25700, 26000, 26500, 
        27200, 27500, 27800,  28300, 28500, 28600, 29600, 30300, 31000, 
        31500, 31700, 32100, 32300, 32500, 33200, 33500, 33800, 34500, 35200, 36000],
        'audioDuration': 36000, // Total duration of audio in milliseconds
      },

      


      // Rhyming Words

      10: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Rythming Words /al/',
        'words': ['Ball', 'Call', 'Tall',
          'Wall', 'Fall'],
      },

      11: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Rythming Words /ar/',
        'words': ['Car', 'Bar', 'Far',
          'Jar', 'Star'],
      },

      12: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Rythming Words /at/',
        'words': ['Cat', 'Bat', 'Hat',
          'Rat', 'Sat'],
      },


      13: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Rythming Words /ee/',
        'words': ['Free', 'Three', 'Tree',
          'Bee', 'Knee'],
      },

      14: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Rythming Words /ell/',
        'words': ['Shell', 'Bell', 'Smell',
          'Spell', 'Swell'],
      },

      // Vowels Words

      15: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Rhyming Words (/uck/)',
        'words': ['Duck', 'Truck', 'Luck', 'Buck', 'Pluck'],
      },

      // Vowel and Consonant word sound
      16: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH LONG a OR /ey/',
        'words': ['Fate', 'Lake', 'Lam', 'Lame', 
        'Man', 'Quack', 'Quake', 'Tack', 'Take'],
      },

      17: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH ai SOUNDS AS LONG a OR /ey/',
        'words': ['Aim', 'Fail', 'Grain', 'Maid', 'Main',
        'Male', 'Nail', 'Pail', 'Rail',  'Rain', 'Stain', 'Trail',
        'A housemaid repaints the wall with a pail of paint.'],
      },

      18: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH aw SOUNDS /ow/ OR /ò/',
        'words': ['Draw', 'Flaw', 'Hawk', 'Jaw', 'Law', 'Maw',
        'Saw', 'Staw', 'The claws of the hawk can kill its prey.'],
      },

      19: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH ay SOUNDS AS /ey/',
        'words': ['Away', 'Clay', 'Lay', 'Pay', 'Ray', 
        'Slay', 'Stay', 'Sway', 'Way',
        'Ray and May stay at home to play the clay.'],
      },

      20: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH ea SOUNDS /ë/ OR /iy/',
        'words': ['Beam', 'Beat', 'Deal', 'East', 
        'Least', 'Mean', 'Read', 'Ream', 
        'A wealthy man eats his breakfast with a tea.'],
      },

      21: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH ee SOUNDS AS /ë/ OR /iy/',
        'words': ['Beet', 'Breeze', 'Seen', 'Sweet', 'Weed',
        'Sheena sweeps the green seeds of weed in the yard.'],
      },

    
      22: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH /ew/',
        'words': ['Blew','Chew', 'Dew', 'Drew', 
        'Few', 'Flew', 'Grew', 'Mew', 'New', 'News', 
         'Pew', 'Thew', 'The boy has a new coin.'],
      },

      23: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'FORMING WORDS WITH SHORT i TO long i OR /ay/',
        'words': ['Bit', 'Bite', 'Dick', 'Dike', 'Dim', 
        'Dime', 'Lick', 'Like', 'Rid', 'Ride', 'Till', 'Tile',
        'With a smile, Mike quietly rides on a big bike.'],
      },

      24: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH /oi/ SOUNDS',
        'words': ['Boys', 'Choice', 'Joy', 'Oyster', 'Soil', 
        'Toil', 'Toy', 'Joyce togther with the boys joined the voice lesson.'],
      },


      25: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH -oo',
        'words': ['Book', 'Brook', 'Cook', 'Crook', 'Good', 
        'Hood', 'Look', 'Mood', 'Shook', 'Stood', 'Wood',
        'Rod is in good mood while cooking his food.'],
      },


      26: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH ou SOUNDS AS /aw/',
        'words': ['Found', 'House', 'Loud', 'Mouth', 'Out', 
        'Pound', 'Shout', 'Ron saw it, he shouts aloud and run away.'],
      },

      27: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH o OR u SOUNDS AS /a/',
        'words': ['Cod', 'Cop', 'God', 'Jot', 'Not', 
        'Tot', 'The cops rush into the tied bus to cut the knots.'],
      },

      28: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH o OR u SOUNDS AS /o/',
        'words': ['Boss', 'Both', 'Morning', 'Short', 
        'Sort', 'Sport', 'Rona posts the forms for covid 19 vaccine.'],
      },

      29: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'WORDS WITH ow SOUNDS AS /aw/',
        'words': ['Cow', 'Down', 'Gown', 'How', 'Now', 
        'Power', 'Shower', 'Tower', 'Town', 'The clown down the tower owns the brown gown.'],
      },


    
      // Consonant Blend
      30: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /bl/',
        'words': ['Blade', 'Blame', 'Bland', 'Blast', 'Bleach', 
        'Bless', 'Block', 'Blond', 'Blot', 'Blow', 'Blue',
        'Blush', 'Blesildas favorite colors are black and white.'],
      },

      31: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /br/',
        'words': ['Brace', 'Breast', 'Bridge', 'Bright',  
        'Brim', 'Broil', 'Brood', 'Brother',
        'Brown', 'Brandy lost his brakes near the bridge.'],
      },

      32: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /ch/',
        'words': ['Choke', 'Cheese', 'Cheer', 'Cheek',  
        'Check', 'Cheap', 'Chair', 'Centro super sale has a cheap place in groceries.'],
      },

      33: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /cl/',
        'words': ['Clap', 'Claw', 'Clay', 'Clean',  
        'Clear', 'Click', 'Clog', 'Close', 'Clown',
        'Clue', 'Clump', 'Clutch', 'Claire clapped her hands after watching the funny clown.'],
      },

      34: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /cr/',
        'words': ['Crane', 'Crate', 'Craze', 'Creek',  
        'Crisp', 'Croak', 'Christy put a cream in her coffee.'],
      },
      
      35: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /dr/',
        'words': ['Draft', 'Dredge', 'Dribble', 'Drug',  
        'Dry', 'Dresden drew a dragon and a dragonfly yesterday.'],
      },

      36: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /fl/',
        'words': ['Flake', 'Flash', 'Flask', 'Flat', 
        'Fledge', 'Flee', 'Fleet', 'Flood', 'Flow', 'Flower', 'Flunk', 
        'Flute', 'The Filipino flag fly high in our school.'],
      },

      37: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /fr/',
        'words': ['Fraction', 'Frail', 'Frank', 'Free',  
        'Frequent', 'Fresh', 'Fret', 'Frolic', 'From', 
        'Front', 'Frost', 'Frown', 'The farmer harvested fresh fruits from the farm.'],
      },

      38: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /gl/',
        'words': ['Glad', 'Glade', 'Glance', 'Glare',  
        'Glass', 'Glaze', 'Glimpse', 'Glint', 'Gloom',
        'Gloss', 'Glow', 'Glue', 'She glances at the globe.'],
      },

      39: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /gr/',
        'words': ['Grain', 'Grass', 'Grave', 'Grease',  
        'Green', 'Grocery', 'Grow', 'A group of children caught grasshopers in the grass.'],
      },

      40: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /pl/',
        'words': ['Plain', 'Plan', 'Plant', 'Plate',  
        'Plateau', 'Play', 'Please', 'Pledge', 'Plot',
        'Plow', 'Pluck', 'Children like to play under the sun.'],
      },

      41: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /qu/',
        'words': ['Quad', 'Quake', 'Quarter', 'Quartet',  
        'Quarts', 'Quell', 'Quench', 'Quest', 'Quite',
        'Quiz', 'The teacher quickly put a question mark in his paper.'],
      },

      42: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /sh/',
        'words': ['Shade', 'Shaggy', 'Shake', 'Shark',  
        'Sheet', 'Shine', 'Shoot', 'Shoulder',
        'Shovel', 'Chris favorite foods are shells and shrimps.'],
      },

      43: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /sp/',
        'words': ['Spade', 'Spaghetti', 'Sparkle', 'Speak',  
        'Spear', 'Speech', 'Sport', 'Mother cooks special spaghetti.'],
      },

      44: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /st/',
        'words': ['Stairs', 'Stall', 'Steak', 'Steam',  
        'Sting', 'Store', 'The strands of straw were kept in the stable.'],
      },

      45: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /sw/',
        'words': ['Swallow', 'Swamp', 'Swan', 'Swat',  
        'Sway', 'Sweet', 'Swift', 'Swim', 'Swollen', 
        'Richard cannot swing his swollen arm.'],
      },

      46: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /tr/',
        'words': ['Travel', 'Treasure', 'Treat', 'Trees',  
        'Tribe', 'Trick', 'Tricycle', 'Trip', 'Troop', 
        'Truck', 'Try', 'Dina transfers the tray in the kitchen.'],
      },

     47: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /tw/',
        'words': ['Twang', 'Tweed', 'Tweezers', 'Twelve', 
        'Twenty', 'Twice', 'Twilight', 'Twinkle', 'Twirl',
        'Twist', 'Twit', 'There are twenty twigs in the basket'],
      },

    
      48: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Blend /wh/',
        'words': ['Wharf', 'What', 'When', 'Where',  
        'Whether', 'Whine', 'Whish', 'Whisk', 'White',
        'Why', 'Whiz', 'The policeman bought a white whistle in the store.' ],
      },


      // The Consonant Cluster
      49: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Cluster /str/',
        'words': ['Strain', 'Strand', 'Stranger', 'Stretch',  
        'Strict',  'Strike', 'Strip', 'Stroke', 'Struck', 'Strung',
        'Every morning Mr. Parba strollsin the seashore.'],
      },

      50: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Cluster /spl/',
        'words': ['Splatter', 'Spleen', 'Splendid', 'Splice', 
        'Splint', 'Split', 'Lito splashes alcohol in his hand to avoid bacteria.'],
      },

      51: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Consonant Cluster /scr/',
        'words': ['Scramble', 'Scrap', 'Scrape', 'Scratch', 'Screw',  
        'Scribble', 'Script', 'Scroll', 'Mr. Diaz scraped off the paint of his car.'],
      },



      // The Final Consonant Blend
      52: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /lt/',
        'words': ['Belt', 'built', 'Colt', 'Dealt',  
        'Kilt', 'Melt', 'Quilt', 'Salt', 'Tilt', 'Vault', 
        'Wilt','The water in the sea turned into salt.'],
      },

      53: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /ft/',
        'words': ['Craft', 'Draft', 'Left', 'Lift',  
        'Raft', 'Theft', 'Thrift', 'The boy uses his left hand in writing.'],
      },

      54: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /ct/',
        'words': ['Addict', 'Collect', 'Connect', 'Correct',  
        'Effect', 'Eject', 'Erect', 'Select', 'The pupils select their best work for exhibit.'],
      },

      55: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /rt/',
        'words': ['Cart', 'Heart', 'Part', 'Port',  
        'Quart', 'Report', 'Shirt', 'Short', 'Skirt', 
        'Smart', 'Sport', 'Start', 'The basketball is a good sport for the young boys.'],
      },

      56: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /nt/',
        'words': ['Cent', 'Faint', 'Hunt', 'Paint',  
        'Point', 'Print', 'Saint', 'Spent', 'Went', 
        'The hunters hunt wild animals in the forest.'],
      },

      57: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /nk/',
        'words': ['Bank', 'Blank', 'Drink', 'Drunk',  
        'Dunk', 'Flunk', 'Rank', 'Sink', 'Sunk', 'Tank', 
        'Trunk', 'Wink', 'Miss. Philippines was third in rank.'],
      },

      58: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /rk/',
        'words': ['Bark', 'Cork', 'Dark', 'Hark',  
        'Lark', 'Lurk', 'Mark', 'Mirk', 'Pork', 'Spark', 
        'Maramag Municipal Park is beautiful.'],
      },

      59: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /sk/',
        'words': ['Ask', 'Cask', 'Desk', 'Flask',  
        'Frisk', 'Husk', 'Mask', 'Risk', 'Task', 
        'Maria spilled her milk on the table.'],
      },

      60: {
        'title': 'Lesson $lessonNumber',
        'subTitle': 'Final Consonant Blend /nd/',
        'words': ['Band', 'Bend', 'Bind', 'Blind',  
        'Blond', 'Found', 'Hand', 'Kind', 'Mend', 'Sand', 'Send',
        'The children play sand in the seashore.'],
      },

    };

    return lessonContent[lessonNumber] ?? {
      'title': 'Lesson Not Found',
      'subTitle': '',
      'words': [],
    };
  }
