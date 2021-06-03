import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreditCardModel {

  String _number;
  String _cardHolder;
  String _expirationDate;
  String _cvv;

  CreditCardModel({
    required String number,
    required String cardHolder,
    required String expirationDate,
    required String cvv,
  })  : _number = number,
        _cardHolder = cardHolder,
        _expirationDate = expirationDate,
        _cvv = cvv;

  String getPatternType (){
    final String first = number[0];
    final String second = number[1];
    final String pattern = first + second;
    return pattern;
  }

  IconData cardType(String value) {
    switch (value) {
      case "22":
        {
          return FontAwesomeIcons.ccMastercard;
        }
      case "23":
        {
          return FontAwesomeIcons.ccMastercard;
        }
      case "51":
        {
          return FontAwesomeIcons.ccMastercard;
        }
      case "55":
        {
          return FontAwesomeIcons.ccMastercard;
        }
      case "34":
        {
          return FontAwesomeIcons.ccAmex;
        }
      case "37":
        {
          return FontAwesomeIcons.ccAmex;
        }
      case "65":
        {
          return FontAwesomeIcons.ccDiscover;
        }
      default:
        {
          return FontAwesomeIcons.creditCard;
        }
    }
  }

  String get number => _number;

  set number(String value) {
    if (isValidCard(value)) {
      _number = value;
    }
  }

  String get cardHolder => _cardHolder;

  String get cvv => _cvv;

  set cvv(String value) {
    if (value.length == 3) {
      _cvv = value;
    }
  }

  String get expirationDate => _expirationDate;

  set expirationDate(String value) {

    final DateTime now = DateTime.now();
    final List<String> date = value.split(RegExp('/'));
    final int month = int.parse(date.first);
    final int year = int.parse('20${date.last}');
    final DateTime cardDate = DateTime(year, month);

    if (cardDate.isAfter(now) && month != 0 && month <= 12) {
      _expirationDate = value;
    }
  }

  set cardHolder(String value) {
    if (cardHolder.trim().split(' ').length <= 1) {
      _cardHolder = value;
    }
  }

  //Function to validate a credit card number
  bool isValidCard (String cardNumber){
    int sum = 0;
    int sumDouble = 0;
    final List<int> numbers = [];

    //Parse string's characters to int list
    for (int i = 0; i < cardNumber.length; i++){
      numbers.add(int.parse(cardNumber[i]));
    }
    //Calculate the double or sum depending of index
    for (int i = numbers.length - 1; i >= 0; i--) {
      if (i % 2 == 0){
        final int result = numbers[i] * 2;
        if (result < 9){
          sumDouble += result;
        } else {
          sumDouble += (result % 10) + 1;
        }
      } else {
        sum += numbers[i];
      }
    }
    //Validate the number
    final int totalSum = sum + sumDouble;
    if (totalSum % 10 == 0 && cardNumber.length >= 13 && cardNumber.length <= 19){
      return true;
    } else {
      return false;
    }
  }
}