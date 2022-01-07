import 'package:classy_ecom_pract/models/all_products.dart';
import 'package:classy_ecom_pract/services/productApiService.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final apiService = ApiRequest();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),


      body: FutureBuilder(
          future: apiService.allProductApiReq(),
          builder: (context, data) {
            if(data.hasError){
              print(data.error.toString());
              return Center(child: Text("${data.error}"));
            }else if(data.hasData){
              var items = data.data as List<Products>;
              print(items.length);
              return ListView.builder(
                  itemCount: items == null ? 0 : items.length,
                  itemBuilder: (context, index){
                    return Card(
                      elevation: 5,
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 50,
                              height: 50,
                              child: Image(
                                image: NetworkImage(
                                    'https://classyecommerce.excelitaiportfolio.com/'+items[index].productThambnail.toString()
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child: Text(
                                          items[index].productName.toString(),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child: Text(items[index].id.toString()),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child:
                                        Text(items[index].sellingPrice.toString(),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child:
                                        Text(items[index].discountPrice.toString(),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child:
                                        Text(items[index].productShortDescp.toString(),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child:
                                        Text(items[index].productLongDescp.toString(),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child:
                                        Text(items[index].createdAt.toString(),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8, right: 8),
                                        child:
                                        Text(items[index].updatedAt.toString(),),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  }
              );
            }else{
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }
      ),
    );
  }
}