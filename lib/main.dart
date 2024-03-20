import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Umbrella Menus',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Menu> menuList = [
    Menu(
      menuName: 'Ayam Lalapan ',
      price: 'Rp 30.000',
      desc: 'Masakan ayam goreng lalapan paling tepat jadi ide kalau kamu lagi males ribet menyajikan menu lauk dan sayur terpisah.',
      rating: 5,
      imgUrl: 'https://www.masakapahariini.com/wp-content/uploads/2023/11/Resep-Ayam-Goreng-Lalapan-780x440.jpg',
    ),
    Menu(
      menuName: 'Ayam Geprek',
      price: 'Rp 20.000',
      desc: 'Ayam geprek menyajikan perpaduan rasa gurih dan pedas yang pas dan cocok dengan cita rasa lidah orang Indonesia.',
      rating: 4,
      imgUrl: 'https://www.dapurkobe.co.id/wp-content/uploads/kulit-ayam-crispy-geprek.jpg',
    ),

    Menu(
      menuName: 'Ayam Bakar',
      price: 'Rp 25.000',
      desc: 'Hidangan Indonesia dari ayam yang dipanggang di atas arang.',
      rating: 4,
      imgUrl: 'https://asset.kompas.com/crops/yoovaRyPxaPFOY4gfCciore2eUY=/3x0:700x465/750x500/data/photo/2020/12/30/5fec5602f116e.jpg',
    ),

    Menu(
      menuName: 'Ayam Laos',
      price: 'Rp 30.000',
      desc: 'Ayam goreng dengan bumbu laos yang diungkep hingga empuk, kemudian digoreng kering sehingga menciptakan citarasa asin gurih',
      rating: 4,
      imgUrl: 'https://asset-2.tstatic.net/jambi/foto/bank/images/resep-ayam-goreng-bumbu-laos-a.jpg',
    ),

    Menu(
      menuName: 'Ayam Penyet',
      price: 'Rp 30.000',
      desc: 'hidangan Ayam goreng Indonesia, khususnya Jawa, yang terdiri dari ayam goreng yang diulek memakai ulekan untuk melembutkannya.',
      rating: 4,
      imgUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Ayam_penyet.JPG/1920px-Ayam_penyet.JPG',
    ),

    Menu(
      menuName: 'Ayam Saos Tiram',
      price: 'Rp 45.000',
      desc: 'lahan ayam yang dimasak dengan bumbu saus tiram.',
      rating: 4,
      imgUrl: 'https://www.dapurkobe.co.id/wp-content/uploads/ayam-saus-tiram.jpg',
    ),
   
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Umbrellas Menu', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 0, 0)
        ),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          return _buildMenuItem(menuList[index]);
        },
      ),
      ),
    );
  }

  Widget _buildMenuItem(Menu menu) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.all(16.0),
      color: Colors.pink[40],
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(
              menu.imgUrl,
              fit: BoxFit.cover
            )
            ),
            SizedBox(width: 16.0),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menu.menuName,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    menu.price,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    menu.desc,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      for (int i = 0; i < menu.rating; i++)
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                          size: 16.0,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu {
  String menuName;
  String price;
  String desc;
  int rating;
  String imgUrl;

  Menu({
    required this.menuName,
    required this.price,
    required this.desc,
    required this.rating,
    required this.imgUrl,
  });
}