import 'dart:ui';
import 'package:flutter/material.dart';

class QuestionModel {

  String? shoename;
  final String picure;
  String? question;
  Map<String, bool>? answer;


  // Constructor that directly uses Image.asset
  QuestionModel(this.shoename,this.picure, this.question, this.answer);
}

