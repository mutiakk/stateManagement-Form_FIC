import 'package:flutter/material.dart';
import 'package:example/core.dart';
import '../controller/ltsm_visibility_controller.dart';

class LtsmVisibilityView extends StatefulWidget {
  const LtsmVisibilityView({Key? key}) : super(key: key);

  Widget build(context, LtsmVisibilityController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtsmVisibility"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text("Visibility is  "+ controller.visible.toString()),
              Center(
                  child: controller.visible == false
                      ? Container()
                      : Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.red,
                        )),
              MaterialButton(
                onPressed: () {
                  controller.visible = !controller.visible;
                  controller.setState(() {});
                  print("visible");
                },
                color: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Text("Cek Visibility"),
              ),
              /*
              ? Buat variabel visible di dalam State/Controller
              ! bool visible = false;

              ? Tambahkan statement ini di dalam Column:
              if(controller.loading)
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),

              ? Buat sebuah button, dan tambahkan kode ini di dalam event onPressed()
              /*
              controller.visible = controller.visible!;
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
  State<LtsmVisibilityView> createState() => LtsmVisibilityController();
}
