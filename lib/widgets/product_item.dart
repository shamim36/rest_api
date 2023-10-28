import 'package:flutter/material.dart';
import 'package:rest_api/screens/add_new_product_screen.dart';

class ProductItem extends StatelessWidget {
  ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(context: context, builder: (context){
          return productActionDialog(context);
        });
      },
      leading: Image.network(
        'https://cdn.shopify.com/s/files/1/0059/0630/1017/t/5/assets/keychronv1custommechanicalkeyboard27-1657706139851.jpg?v=1657706183',
        width: 80,
      ),
      title: Text('Product Name'),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Product code'),
              SizedBox(
                width: 24,
              ),
              Text('Total price'),
            ],
          ),
          Text('Product Description'),
        ],
      ),
      trailing: Text('\$120'),
    );
  }
}

AlertDialog productActionDialog(BuildContext context) {
  return AlertDialog(
    title: Text('Select Action'),
    content: Column(
      children: [
        ListTile(
        title: Text('Edit'),
        leading: Icon(Icons.edit),
        onTap: (){
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddNewProductScreen();
          },),);
        },
      ),
      const Divider(),
      ListTile(
        title: Text('Delete'),
        leading: Icon(Icons.edit),
        onTap: (){
          Navigator.pop(context);
        },
      ),
      ],
    ),
  );
}
