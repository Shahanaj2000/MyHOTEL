import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_hotel/category.dart';

//! List of map values
final List rooms = [
  {"image": "my_hotel/assets/Images/Imperial-Delhi.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/itcchola.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/leelabangaloreresized.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/neeleshwarhermitage.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/oberoigrandkolkata.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/suryasamudra.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/tajlakepalace.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/tajmahalmumbai.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/ultimatetravellingcamp.jpg", "title": "........"},
  {"image": "my_hotel/assets/Images/vanyavilas.jpg", "title": "........"},

];

class HotelHomePage extends StatelessWidget {
  const HotelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:  [
          SliverAppBar(
            expandedHeight: 180.0,
            backgroundColor: Colors.cyan,
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            //! Action
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_sharp)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.help)),
              
            ],
            floating: true, //Stop Scrolling the app Bar section
            flexibleSpace: ListView(
              children:  [
                 const SizedBox(
                  height: 70.0,
                ),
                 const Text(
                  "Type your Location",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  
                  margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  //padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:  TextField(
                    decoration: InputDecoration(
                      //prefixIcon: Icon(Icons.search),
                      prefixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                      hintText: 'Search the location',
                      hintStyle: const TextStyle(
                        color: Colors.black
                      ),
                      border: InputBorder.none,
                      //icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                    ),
                  ),
                )
              ],
            ),
          ),
          //! Done Sliver App Bar
          //! SliverToBoxAdapter
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
           
          SliverToBoxAdapter(
            child: _buildCategories(),
          )
        ],
      ),
    );
  }
  //!Build Categories
  Widget _buildCategories() {
    return Container(
      color: Colors.black,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
           SizedBox(
            width: 15,
          ),
          //!Custom Widget
          Categorey(
            icon: Icons.hotel,
            title: 'HOTEL',
            backgroundColor: Colors.red,
          ),
           SizedBox(
            width: 15,
          ),
          Categorey(
            icon: Icons.restaurant,
            title: 'RESTURANT',
            backgroundColor: Colors.green,
          ),

           SizedBox(
            width: 15,
          ),
          Categorey(
            icon: Icons.local_cafe,
            title: 'CAFE',
            backgroundColor: Colors.orange,
          ),
          
        ],

      ),
    );
  }


  
}

//! Custom Widget (Category())
  

  