import 'guest.dart';
import 'payment.dart';
import 'room.dart';

class Booking {
  Guest guest;
  Room room;
  DateTime checkIn;
  DateTime checkOut;
  Payment? payment;

  Booking(this.guest, this.room, this.checkIn, this.checkOut);

  bool overlaps(DateTime newCheckIn, DateTime newCheckOut) {
    return checkIn.isBefore(newCheckOut) && newCheckIn.isBefore(checkOut);
  }

  void confirmPayment(double amount) {
    payment = Payment(amount, DateTime.now());
  }
}