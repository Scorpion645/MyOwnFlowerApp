import 'package:flowerappallbyme/templates.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';
import 'Data.dart';

class Details extends StatefulWidget {
  Item product;

  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool maxline = false;

  @override
  Widget build(BuildContext context) {
    final carrrt = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
          backgroundColor: appbarGreen,
          title: Text('Product details'),
          centerTitle: true,
          actions: [ItemsAndPrice()]),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('${widget.product.itemImage}'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              '\$ ${widget.product.itemPrice}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'New',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(BTNpink))),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: BTNgreen,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Main Store',
                      style: TextStyle(
                          fontSize: 16,
                          color: appbarGreen,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                child: Text(
                  'Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:12.0),
            child: Text(
                'aadf asd asdf d fg ht jtyj trjrt werge gerg. erweydgsdfgsdg sdgasdfas fasdfasdfasd fasddf asdfasdfasdfasdf asdfasdfasdfasdf asdfasdfasdfasdfa sdfgsdfg dsfgsdfgsdg dsfgsdfgsdfg sdfgsdfgdsf dfgdfg. rtyu  gsdf gsd gr thett yjw gqe fqf ergw thjfsdgf sdfg. sfgsdfherewergweytuurtq ad sdf gd ghfyurtyerg.',
                // overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                maxLines: maxline ? null : 3),
          ),
          TextButton(
              onPressed: () {
setState(() {
                  maxline = !maxline;

});
              },
              child: Text('Show more!')),
        ]),
      ),
    );
  }
}
