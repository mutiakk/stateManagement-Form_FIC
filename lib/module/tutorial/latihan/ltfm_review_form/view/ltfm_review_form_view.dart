import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmReviewFormView extends StatefulWidget {
  const LtfmReviewFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmReviewFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmReviewForm"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: const Text("Rate"),
              onPressed: () async {

                await showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Review'),
                      content: SingleChildScrollView(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ListBody(
                            children: <Widget>[
                              Column(
                                children: [
                                  QMemoField(label: "Review", onChanged: (value) {}),
                                  RatingBar.builder(
                                    initialRating: 2.0,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 28.0,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                  SizedBox(height: 30),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Rate"),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)),
                                    color: Colors.orange,
                                    minWidth: 300,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }

  //! 1. Buat sebuah textarea "Review"
  //! 2. Tambahkan ratingbar setelah textarea review, gunakan kode ini:
  /*

              */
  //! 3. Tambahkan
  //! 4. Tambahkan tombol "Review"
  //! 5. Tambahkan kode ini ketika tombol review di klik
  /*
              `Navigator.pop(context);`
              */
  @override
  State<LtfmReviewFormView> createState() => LtfmReviewFormController();
}
