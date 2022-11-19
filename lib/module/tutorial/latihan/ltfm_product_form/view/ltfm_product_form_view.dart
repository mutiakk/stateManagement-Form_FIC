import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmProductFormView extends StatefulWidget {
  const LtfmProductFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmProductForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(onPressed: (){controller.save();}, child: Text("Save")),
          )
          //! 5. Tambahkan tombol Save
          //! 6. Beri padding/margin pada tombol Save sebanyak 10
          //! 7. Panggil controller.save() ketika tombol di klik
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        label: "Product name",
                        hint: "Name of Product",
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          helperMaxLines: 15,
                          labelText: 'Price',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      TextFormField(
                        maxLength: 15,
                        decoration: const InputDecoration(
                          helperMaxLines: 15,
                          labelText: 'Description',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                      QDropdownField(
                        label: "Category",
                        hint: "Your product category",
                        validator: Validator.required,
                        items: const [
                          {
                            "label": "Food",
                            "value": 1,
                          },
                          {
                            "label": "Drink",
                            "value": 2,
                          },
                          {
                            "label": "Main Course",
                            "value": 3,
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                      QRadioField(
                        label: "Status",
                        validator: Validator.atLeastOneitem,
                        items: const [
                          {
                            "label": "Published",
                            "value": "published",
                          },
                          {
                            "label": "Draft",
                            "value": "draft",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                    ],
                  ),
                ),
              ),


              //! 1. Buat sebuah Card, tambahkan Column di dalamnya
              //! 2. Tambahkan padding.all 20.0
              //! 3. Di dalam column yang ada di dalam Card, tambahkan field ini:
              //? textfield product name
              //? textfield price (hanya bisa menerima angka)
              //? textfield description (textfield dengan maxlines: 15)
              //! 4. Tambahkan dropdown untuk memilih category, gunakan kode ini:
              /*

              */
              //! 5. Tambahkan radio untuk menentukan status product, gunakan kode ini:
              /*

             */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmProductFormView> createState() => LtfmProductFormController();
}
