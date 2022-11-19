import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_counter_controller.dart';

class LtsmCounterView extends StatefulWidget {
  const LtsmCounterView({Key? key}) : super(key: key);

  Widget build(context, LtsmCounterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmCounter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                controller.counter.toString(),
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              MaterialButton(
                onPressed: () => controller.updateCounter(),
                color: Colors.orange,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Text("Counter"),
              )
              /*
              ? 1. ambil variabel counter, tampilkan ke dalam text
              ! controller.counter lalu tampilkan di dalam Text("")

              ? 2. buat sebuah button, dan tambahkan event ini di dalam event onPressed()
              ! ketika di klik, panggil fungsi updateCounter()
              ! contoh: controller.updateCounter();
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmCounterView> createState() => LtsmCounterController();
}
