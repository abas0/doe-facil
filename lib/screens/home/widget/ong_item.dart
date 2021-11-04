import 'package:doe_facil/constants/constants.dart';
import 'package:doe_facil/models/ong.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OngItem extends StatelessWidget {
  final Ong ong;
  OngItem(this.ong);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
      ),
      child: Row(
        children: [
          Container(
            height: 150,
            width: 160,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(ong.ongImg, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 200,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: kDefaultPadding - 12,
                          left: kDefaultPadding - 8,
                          bottom: kDefaultPadding - 12,
                        ),
                        child: Row(
                          children: <Widget>[
                            Text(
                              ong.ongName,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: kFont,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 220,
                        height: 60,
                        padding: EdgeInsets.only(
                          left: kDefaultPadding - 8,
                          bottom: kDefaultPadding - 10,
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                ong.ongResume,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: kFont,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(color: kFontLight),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Ver +',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16,
                                ))),
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: kButtonDonatePrimary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Doar',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16,
                                ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
