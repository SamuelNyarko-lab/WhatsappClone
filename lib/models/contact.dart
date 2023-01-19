import 'package:whatsapp/models/message.dart';

class Contact {
  String name, number, imagelink;
  List<Message> messages = messageList;
  Contact({
    required this.name,
    required this.number,
    required this.imagelink,
    messages,
  });
}

List<Contact> contact = [
  Contact(
    name: 'Elon Musk',
    number: '0222020202',
    imagelink: 'assets/images/ghana.png',
    messages: messageList,
  ),
  Contact(
    name: 'Elon Dad',
    number: '0222020202',
    imagelink: 'assets/images/italy.png',
    messages: messageList,
  ),
  Contact(
    name: 'Elon Mum',
    number: '0222020202',
    imagelink: 'assets/images/usa.png',
    messages: messageList,
  ),
  Contact(
    name: 'Elon Bro',
    number: '0222020202',
    imagelink: 'assets/images/ghana.png',
    messages: messageList,
  ),
  Contact(
    name: 'Elon Sis',
    number: '0222020202',
    imagelink: 'assets/images/usa.png',
    messages: messageList,
  ),
  Contact(
    name: 'Koo Musk',
    number: '0222020202',
    imagelink: 'assets/images/nigeria.png',
    messages: messageList,
  ),
  Contact(
    name: 'Elon Musk',
    number: '0222020202',
    imagelink: 'assets/images/safrica.png',
    messages: messageList,
  ),
  Contact(
    name: 'Elon Musk',
    number: '0222020202',
    imagelink: 'assets/images/ghana.png',
    messages: messageList,
  ),
];
