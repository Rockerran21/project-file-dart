import 'package:app/CitizenshipUploadPage.dart';
import 'package:app/PassportUploadPage.dart';
import 'package:app/Plus2CertificateUploadPage.dart';
import 'package:app/SeeCertificateUploadPage.dart';
import 'package:app/SeeProgressPage.dart';
import 'package:app/UploadFilePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Upload File'),
            onTap: () {
              // Navigate to upload file page
            },
          ),
          ListTile(
            title: Text('See Progress'),
            onTap: () {
              // Navigate to see progress page
            },
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                _buildCategoryCard('Citizenship'),
                _buildCategoryCard('Passport'),
                _buildCategoryCard('SEE Certificate'),
                _buildCategoryCard('+2 Certificate'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String title) {
    return Card(
      child: InkWell(
        onTap: () {
          if (title == 'Upload File') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => UploadFilePage(),
              ),
            );
          } else if (title == 'See Progress') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SeeProgressPage(),
              ),
            );
          } else if (title == 'Citizenship') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => CitizenshipUploadPage(),
              ),
            );
          } else if (title == 'Passport') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PassportUploadPage(),
              ),
            );
          } else if (title == 'SEE Certificate') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SeeCertificateUploadPage(),
              ),
            );
          } else if (title == '+2 Certificate') {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Plus2CertificateUploadPage(),
              ),
            );
          }
        },
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
