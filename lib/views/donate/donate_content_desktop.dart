import 'package:flutter/material.dart';
import 'package:TheBigMac/views/donate/donation_info.dart';
import 'package:TheBigMac/widgets/DonationInfo/donation_info_card.dart';

class DonateContentDesktop extends StatelessWidget{
  const DonateContentDesktop({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF011f4b),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10.0)],
                ),
                width: 440,
                height: 50,
                child: Center(
                  child: Text(
                    'TICKET HOLDERS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40),
              Container(
                color: Color(0xFF011f4b),
                width: 200,
                height: 50,
                child: Center(
                  child: Text(
                    'NON-TICKET HOLDERS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DonationInfoCard('Refund Forms', RefundFormsInfo, "no_url"),
              SizedBox(width: 40),
              DonationInfoCard('Donation Ticket', DonationTicketInfo, 'https://fixr.co/event/168966603'),
              SizedBox(width: 40),
              DonationInfoCard('RAG Percent', RAGInfo, 'https://wearepercent.com/cause/169110'),
            ],
          ),
        ],
      ),
    );
  }
}