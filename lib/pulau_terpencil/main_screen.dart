import 'package:flutter/material.dart';
import 'package:pulau_terpencil/model/kumpulan_pulau.dart';
import 'package:pulau_terpencil/pulau_terpencil/detail_screen.dart';

class MyMainScreen extends StatelessWidget {
  const MyMainScreen({super.key});

  AppBar _appBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "Pulau Terpencil", 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.green
            ],
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: LayoutBuilder(builder: (context, BoxConstraints constraints){
        if(constraints.maxWidth < 700){
          return MyListView();
        }else if(constraints.maxWidth < 1000){
          return MyGridView(index: 3);
        }else{
          return MyGridView(index: 4);
        }
      })
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kumpulanPulauList.length,
        itemBuilder: (context, index){
          final KumpulanPulau pulau = kumpulanPulauList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyDetailScreen(pulau: pulau)));
            },
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                            ),
                            child: Image.asset(pulau.gambar)
                        )
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                pulau.nama,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Text(pulau.lokasi)
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}

class MyGridView extends StatelessWidget {
  final int index;
  const MyGridView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: index,
      children: kumpulanPulauList.map(
        (pulau)=>InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyDetailScreen(pulau: pulau)));
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)
                            ),
                            child: Image.asset(
                              pulau.gambar,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            )
                        )
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              pulau.nama,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                          Text(pulau.lokasi)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        )
      ).toList()
    );
  }
}