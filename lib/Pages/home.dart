import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/Models/product.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoppers'),
      ),
      body: Column(
        children: [
          Text(context.watch<Products>().productlist.length.toString()),
          ElevatedButton(onPressed: (){
            context.read<Products>().AddProduct();
          }, child: Text('Push me')),

          Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width,
            child: Consumer<Products>(
              builder:(context,data,index){
                return ListView.builder(
                  itemCount: context.watch<Products>().productlist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Dismissible(
                        key: Key(index.toString()),
                        child: Container(
                          child: Text(index.toString()),
                        ),

                        direction: DismissDirection.startToEnd,
                        onDismissed: (direction){
                          context.watch<Products>().RemoveProduct(index);
                          
                        },
                      ),
                    );
                  },
                );
              }

            ),
          )
        ],
      ),
    );
  }
}

