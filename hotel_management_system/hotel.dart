import 'room.dart';

class Hotel {
  String name;
  String location;
  List<Room> rooms = [];

  Hotel(this.name, this.location);

  void addRoom(Room room) {
    rooms.add(room);
  }

  List<Room> availableRooms(DateTime checkIn, DateTime checkOut) {
    return rooms.where((room) => room.isAvailable(checkIn, checkOut)).toList();
  }
}