import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'House Cleaning',
          style: GoogleFonts.montserratAlternates(),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/profile.jpg'), // Replace with actual image asset
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jenny Wilson',
                        style: GoogleFonts.montserratAlternates(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star,
                              color: Colors.orange, size: 16),
                          const SizedBox(width: 4),
                          Text(
                            '4.8 (4,479 reviews)',
                            style: GoogleFonts.montserratAlternates(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.location_on,
                              size: 16, color: Colors.red),
                          const SizedBox(width: 4),
                          Text(
                            '255 Grand Park Avenue, New York',
                            style: GoogleFonts.montserratAlternates(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // About Section
              Text(
                'About me',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim nisi ut aliquip.',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 16),
              // Tabs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Services',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    'Photos & Videos',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Review',
                    style: GoogleFonts.montserratAlternates(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Photos Section
              Text(
                'Photos & Videos',
                style: GoogleFonts.montserratAlternates(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Image.asset('assets/photo1.jpg',
                      fit: BoxFit.cover), // Replace with actual assets
                  Image.asset('assets/photo2.jpg', fit: BoxFit.cover),
                  Image.asset('assets/photo3.jpg', fit: BoxFit.cover),
                  Image.asset('assets/photo4.jpg', fit: BoxFit.cover),
                ],
              ),
              const SizedBox(height: 16),
              // Action Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Message',
                        style: GoogleFonts.montserratAlternates(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        'Book Now',
                        style: GoogleFonts.montserratAlternates(
                          color: Colors.white,
                        ),
                      ),
                    ),
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
