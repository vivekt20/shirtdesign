import 'package:flutter/material.dart';
import 'package:shirtdesign/database.dart';

class Shirtdesign  extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("SWEATSHIRT"),
        centerTitle: true,
        actions: [Icon(Icons.shopping_bag)],
    
      ),
      body: Column(
        children: [Row(
          children: [Icon(Icons.search,color: Colors.grey,),
          Text("Search",style: TextStyle(color: Colors.grey),
          ),
          Spacer(),
          Text("Filter",style: TextStyle(color: Colors.grey),),
          SizedBox(width: 8),
          Text("|"),
          SizedBox(width: 8),
          Text("Sort",style: TextStyle(color: Colors.grey),),
          Expanded(child:GridView.builder(itemCount: 6,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,crossAxisSpacing: 5,childAspectRatio: 0.7), itemBuilder: (context,index){
          return Container(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(Database.MyList[index]["image"]))
                  ),
                ),
                Text(Database.MyList[index]["name"]),
                Text(Database.MyList[index]["discription"]),
                Text(Database.MyList[index]["price"]),
              ],
            ),
            ),
          ],
            ),
            );
    );
  }
}
        
      
        
        
  
  

          
          
              
            
                  
                    
                