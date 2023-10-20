class Ninja {
  Ninja({
    required this.name,
    required this.level,
    required this.email,
    required this.phone
  });

  String name;
  String level;
  String email;
  String phone;
}

class NinjaList {

  List<Ninja> ninjas = [];

  Future<void> getNinjaList() async {
    await Future.delayed(const Duration(seconds: 3), () => {
      ninjas.add(Ninja(name: 'ninja 1', level: '2', email: 'ninja1@fluter.com', phone: '123 456 789')),
      ninjas.add(Ninja(name: 'ninja 2', level: '8', email: 'ninja2@fluter.com', phone: '123 456 789')),
      ninjas.add(Ninja(name: 'ninja 3', level: '5', email: 'ninja3@fluter.com', phone: '123 456 789')),
      ninjas.add(Ninja(name: 'ninja 4', level: '6', email: 'ninja4@fluter.com', phone: '123 456 789')),
      ninjas.add(Ninja(name: 'ninja 5', level: '4', email: 'ninja5@fluter.com', phone: '123 456 789')),
    }) ;
  }
}
