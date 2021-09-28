import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  List Item =['Issues','Pull Requests','Repositories','Organizations'];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {},
              color: Colors.blue,
            ),
          ],
          leading: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage('https://static.retrip.jp/spot/87d8ed9e-0c00-432b-a0c0-d80f4edaba5f/images/0c1ac23b-602a-4dd6-bf12-d4641094c4df_l.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          backgroundColor: Colors.white70,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Home',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'My Work',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ItemList(),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Favorites',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 500,
                height: 180,
                child: Card(
                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Container(
                        child: const Text(
                          'Add favorite repositories here to have\n quick access at any time, without\n having to search',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          child: const Text(
                              'Add Favorites',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
   return  Container(
     margin: EdgeInsets.symmetric(horizontal: 20),
     width: MediaQuery.of(context).size.width,
     child: Card(
       child: Column(
         children: [
           ListTile(
             title: const Text('Issues'),
             leading: Container(
               color: Colors.green,
               width: 30,
               height: 30,
             ),
             trailing: const Icon(
               Icons.arrow_forward_ios,
               size: 15,
             ),
           ),
           ListTile(
             title: Text('Pull Requests'),
             leading: Container(
               color: Colors.blue,
               width: 30,
               height: 30,
             ),
             trailing: Icon(
               Icons.arrow_forward_ios,
               size: 15,
             ),
           ),
           ListTile(
             title: Text('Repositories'),
             leading: Container(
               color: Colors.purple,
               width: 30,
               height: 30,
             ),
             trailing: Icon(
               Icons.arrow_forward_ios,
               size: 15,
             ),
           ),
           ListTile(
             title: Text('Organizations'),
             leading: Container(
               color: Colors.orange,
               width: 30,
               height: 30,
             ),
             trailing: Icon(
               Icons.arrow_forward_ios,
               size: 15,
             ),
           ),
         ],
       ),
     ),
   );
  }
}
