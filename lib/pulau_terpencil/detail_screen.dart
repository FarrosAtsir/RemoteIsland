import 'package:flutter/material.dart';
import 'package:pulau_terpencil/model/kumpulan_pulau.dart';

class MyDetailScreen extends StatelessWidget {
  final KumpulanPulau pulau;
  const MyDetailScreen({required this.pulau, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints){
          if(constraints.maxWidth < 700){
            return DetailMobile(pulau: pulau);
          }else{
            return WebDetail(pulau: pulau);
          }
        })
      )
    );
  }
}

class DetailMobile extends StatefulWidget {
  DetailMobile({super.key, required this.pulau});
  
  final KumpulanPulau pulau;

  @override
  State<DetailMobile> createState() => _DetailMobileState();
}

class _DetailMobileState extends State<DetailMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Stack(
              children: [
                Image.asset(widget.pulau.gambar),
                Positioned(
                  top: 20,
                  left: 10,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.blue,
                          Colors.green
                        ]),
                        shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                )
              ]
          ),
          Card(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
              const SizedBox(height: 20),
              Container(
                child: Text(
                  widget.pulau.nama,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      const Icon(Icons.location_pin, size: 20,),
                      Text(widget.pulau.lokasi, style: const TextStyle(fontSize: 17),)
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                      textAlign: TextAlign.justify,
                      widget.pulau.deskripsi
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(top: 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: ()=>setState(() {
                              widget.pulau.like = !widget.pulau.like;
                            }),
                            icon: Icon(
                                widget.pulau.like == true ? Icons.thumb_up : Icons.thumb_up_outlined
                            )
                        ),
                        IconButton(
                            onPressed: ()=>setState(() {
                              widget.pulau.fav = !widget.pulau.fav;
                            }),
                            icon: Icon(
                                widget.pulau.fav == true ? Icons.bookmark : Icons.bookmark_outline
                            )
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.share))
                      ]
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }
}

class WebDetail extends StatefulWidget {
  final KumpulanPulau pulau;
  const WebDetail({super.key, required this.pulau});

  @override
  State<WebDetail> createState() => _WebDetailState();
}

class _WebDetailState extends State<WebDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
      child: Stack(
        children: [
          Positioned(
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.green
                  ]),
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_back, color: Colors.white,),
              ),
            ),
          ),
          Column(
          children: [
            const Text("Pulau Terpencil", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(widget.pulau.gambar)
                  )
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.pulau.nama, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                            const SizedBox(height: 20,),
                            Row(
                              children: [
                                const Icon(Icons.location_pin, size: 20),
                                Text(widget.pulau.lokasi, style: const TextStyle(fontSize: 16),),
                              ]
                            ),
                            const SizedBox(height: 20),
                            Text(widget.pulau.deskripsi, style: const TextStyle(fontSize: 14)),
                            Container(
                              padding: const EdgeInsets.all(16),
                              margin: const EdgeInsets.only(top: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: ()=>setState(() {
                                      widget.pulau.like = !widget.pulau.like;
                                    }),
                                    icon: Icon(
                                      widget.pulau.like == true ? Icons.thumb_up : Icons.thumb_up_outlined
                                    )
                                  ),
                                  IconButton(
                                      onPressed: ()=>setState(() {
                                        widget.pulau.fav = !widget.pulau.fav;
                                      }),
                                      icon: Icon(
                                          widget.pulau.fav == true ? Icons.bookmark : Icons.bookmark_outline
                                      )
                                  ),
                                  IconButton(onPressed: (){}, icon: const Icon(Icons.share))
                                ]
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                )
              ],
            )
          ],
        )]
      ),
    );
  }
}