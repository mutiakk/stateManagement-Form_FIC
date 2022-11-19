import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_loading_controller.dart';

class LtsmLoadingView extends StatefulWidget {
  const LtsmLoadingView({Key? key}) : super(key: key);

  Widget build(context, LtsmLoadingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmLoading"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("Boolean Loading ${controller.load}"),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: controller.load == true
                      ? const CircularProgressIndicator()
                      : Container()),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {
                  controller.load = !controller.load;
                  controller.setState(() {});
                },
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text("Cek For Loading"),
              )
              /*
              ? Buat variabel loading di dalam State/Controller
              ! bool loading = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                CircularProgressIndicator();

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.loading = controller.loading!;
              controller.setState((){});
              */
                
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtsmLoadingView> createState() => LtsmLoadingController();
}
