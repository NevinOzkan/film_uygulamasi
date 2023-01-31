import 'package:film_uygulamasi/Filmler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetaySayfa extends StatefulWidget {
  Filmler film;

  DetaySayfa({required this.film});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.film.film_adi),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("Images/${widget.film.film_resim_adi}"),
              Text(
                "${widget.film.film_fiyat} \u{20BA}",
                style: TextStyle(fontSize: 48),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  child: Text("KİRALA"),
                  onPressed: () {
                    print("${widget.film.film_adi} kiralandı");
                  },
                ),
              )
            ],
          ),
        ),
      );
}
