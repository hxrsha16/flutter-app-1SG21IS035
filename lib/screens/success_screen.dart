import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:share_plus/share_plus.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQBBEX9V2qsnrBo4M379B1ZAEryqBM6srYwgPql1_VKErBPZXZCnPVvK0afIXqUsoIZoJN2Inx5VxGeEzg',
      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FElon_Musk&psig=AOvVaw2OjoD1gupr6UfQtM6EtIwx&ust=1732798751649000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCKDzxsLI_IkDFQAAAAAdAAAAABAE',
      'https://www.google.com/imgres?q=elon%20musk&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F2%2F2e%2FElon_Musk_Walter_Isaacson_book_cover.jpg&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FElon_Musk_(Isaacson_book)&docid=Y6H3gJA89hzzAM&tbnid=XA6zs-MTDJcBOM&vet=12ahUKEwid-fvAyPyJAxUYUGwGHW6AE2gQM3oECH8QAA..i&w=254&h=388&hcb=2&ved=2ahUKEwid-fvAyPyJAxUYUGwGHW6AE2gQM3oECH8QAA',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: imageUrls.map((url) {
                return Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                );
              }).toList(),
              options: CarouselOptions(
                height: 250.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 8),
                      Text('1034'),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.comment, color: Colors.grey),
                      SizedBox(width: 8),
                      Text('1034'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(width: 8),
                      const Text('3.2'),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.share, color: Colors.grey),
                    onPressed: () {
                      Share.share('Check out this amazing content!');
                    },
                  ),
                ],
              ),
            ),
            const Divider(height: 32, thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Actor Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.access_time, size: 16, color: Colors.grey),
                      SizedBox(width: 8),
                      Text('Duration 20 Mins'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.monetization_on, size: 16, color: Colors.grey),
                      SizedBox(width: 8),
                      Text('Total Average Fees ₹9,999'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'About',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See More',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Meetup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
