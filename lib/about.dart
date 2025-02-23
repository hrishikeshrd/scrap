import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrap/contactpage.dart';
import 'package:scrap/homepage.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Change menu icon color
        elevation: 0, // Remove shadow
        title: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.png'), // Replace with your logo path
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.black87], // Gradient colors
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/logo.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  width: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Homepage()),
                            ); // Navigate back to the homepage
                          },
                          child: Text(
                            "HOME",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        height: 40,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => ContactPage()),
                            );
                          },
                          child: Text(
                            "CONTACT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Background Image with Title
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/About.jpg'), // Replace with your image
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    "ABOUT US",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 3,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Main Content

              SizedBox(height: 10),
              Text(
                "With years of experience in the scrap metal industry, Urban Scrapper has established strong, long-term relationships with our customers. We believe in transparency, efficiency, and customer satisfaction, ensuring a seamless trading experience. Our commitment to reliability and integrity sets us apart in the global scrap market.",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Urban Scrapper in Three Words Section
              Text(
                "Urban Scrapper in Three Words",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildSection("Industrious",
                  "Urban Scrapper is more than just a scrap broker; we specialize in exporting ferrous and non-ferrous scrap metals globally. By eliminating inefficiencies from retail processing, we focus on bulk trade, quality control, and logistics optimization. Our experienced team ensures smooth operations and quick inventory turnover, maximizing productivity every step of the way."),
              SizedBox(height: 20),
              _buildSection("Effective",
                  "At Urban Scrapper, leadership is directly involved in daily operations, fostering a culture of precision and dedication. We value every customer requirement, no matter how small, and empower our employees to make decisions that enhance communication, internal processes, and operational efficiency. Our proactive approach ensures that we remain responsive and adaptable to market demands."),
              SizedBox(height: 20),
              _buildSection("Efficient",
                  "With a well-established global supply chain, Urban Scrapper ensures efficient scrap collection and distribution. Our advanced inventory management system provides real-time tracking, minimizing waste and optimizing trade cycles. By streamlining logistics and financial operations, we guarantee competitive pricing, timely payments, and a smooth experience for all our partners."),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          content,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
