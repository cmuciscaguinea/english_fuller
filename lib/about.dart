// about.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  final List<String> memberNames = [
    'Joemar M. Aguinea (Developer)',
    'Jay C. Ranes (Developer)',
  ];

  final String aboutApp =
      'English Fuller App is an innovative mobile learning tool designed to enhance reading skills among grades 1–3 students using the Fuller Approach. '
      'This app integrates phonics, alphabet recognition, and vocabulary development into an engaging and interactive platform that encourages young learners to develop foundational literacy skills.\n\n'
      'Key features include guided lessons, audio pronunciation, and game-based activities, making it both educational and enjoyable.';

  final String collaborationDetails =
      'Our excellent professors, Mr. Kent Levi Bonifacio, Mrs. Gladys S. Ayunar, and Mrs. Nathalie Joy G. Casildo, led this collaborative endeavor. Their knowledge and input were crucial throughout the projects development.\n\n'
      'We especially thank English teacher Mrs. Leah Culaste Angana, Ph.D., for her expert voice and sound recordings that guaranteed proper pronunciation and improved the educational value of the app.';

  final String counterparts =
      'English Fuller app builds on the legacy of other groundbreaking projects under the CISC KIDS initiative, such as:\n';

      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'About',
          style: GoogleFonts.lexendDeca(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // App Logo
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icon/appicon2.1.png', // Replace with your app logo's asset path
                      height: 120,
                      width: 120,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'English Fuller App',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // About the App Section
              Text(
                'About the App',
                style: GoogleFonts.lexendDeca(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                aboutApp,
                style: GoogleFonts.lexendDeca(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),

              // Collaboration Section
              Text(
                'Collaboration',
                style: GoogleFonts.lexendDeca(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                collaborationDetails,
                style: GoogleFonts.lexendDeca(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),

              // Developers Section
              Text(
                'Developers',
                style: GoogleFonts.lexendDeca(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  // First developer
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text with the image
                    children: [
                      Container(
                        width: 60, // Adjust width for the image
                        height: 60, // Adjust height for the image
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage('assets/profile/developer1.png'), // Replace with the profile picture of the first developer
                            fit: BoxFit.cover, // Ensure the image fits properly
                          ),
                        ),
                      ),
                      SizedBox(width: 15), // Spacing between image and text
                      Expanded(
                        child: Text(
                          'Joemar M. Aguinea\n Developer', // Use \n for role alignment
                          style: GoogleFonts.lexendDeca(
                            fontSize: 16,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Space between developers

                  // Second developer
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text with the image
                    children: [
                      Container(
                        width: 60, // Adjust width for the image
                        height: 60, // Adjust height for the image
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                            image: AssetImage('assets/profile/developer2.png'), // Replace with the profile picture of the second developer
                            fit: BoxFit.cover, // Ensure the image fits properly
                          ),
                        ),
                      ),
                      SizedBox(width: 15), // Spacing between image and text
                      Expanded(
                        child: Text(
                          'Jay C. Ranes\n Developer', // Use \n for role alignment
                          style: GoogleFonts.lexendDeca(
                            fontSize: 16,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),

              // Counterparts App Section
              Text (
                'Counterparts App',
                style: GoogleFonts.lexendDeca(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                counterparts,
                style: GoogleFonts.lexendDeca(
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  // First counterpart item
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/logo/applogo1.2.png', // Replace with the logo of the first counterpart
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '1. CISC KIDS: Marungko Approach Simula sa Pagbasa, which emphasizes phonics-based literacy learning.\n',
                          style: GoogleFonts.lexendDeca(
                            fontSize: 16,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  // Space between counterpart items

                  // Second counterpart item
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/logo/applogo1.2.png', // Replace with the logo of the second counterpart
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '2. CISC KIDS: Reading Comprehension, which focuses on enhancing comprehension skills through technology.\n',
                          style: GoogleFonts.lexendDeca(
                            fontSize: 16,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  

                  // Third counterpart item
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/logo/applogo1.2.png', // Replace with the logo of the second counterpart
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '3. CISC KIDS: Beginnging Reading English Fuller Approach, which integrates phonics, vocabulary building, and alphabet mastery to support early literacy development.',
                          style: GoogleFonts.lexendDeca(
                            fontSize: 16,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
