import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          _buildProfileHeader(),
          const Divider(thickness: 1),
          _buildListItem('Account Type', 'FULL SERVICE'),
          _buildListItem('Account Settings'),
          _buildListItem('LinkAja Syariah', 'Not Active'),
          _buildListItem('Payment Method'),
          _buildListItem('Email', 'muhammadrizkyfauzi061102@gmail.com'),
          _buildListItem('Security Question', 'Set'),
          _buildListItem('PIN Settings'),
          _buildListItem('Language', 'English'),
          const Divider(thickness: 1),
          _buildListItem('Terms of Service'),
          _buildListItem('Privacy Policy'),
          _buildListItem('Help Center'),
        ],
      ),
    );
  }

  // Method to build the profile header with avatar, name, and phone number
  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150', // Replace with actual image URL or asset
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Muhammad Rizky Fauzi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '+6212345678910',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Method to build each list item in the account settings section
  Widget _buildListItem(String title, [String? subtitle]) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            )
          : null,
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // Handle item tap
      },
    );
  }
}
