
int fibonacci(int n)
{
  if(n == 0 || n ==1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// class definition
class Spacecraft
{
  String name;
  DateTime launchDate;

  // constructor 
  Spacecraft(this.name, this.launchDate)
  {
    // init in here
  }

  // default constructor
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
    launchDate?.year; // read-only non-final property

  // Method
  void describe()
  {
    print('Spacecraft: $name');
    if(launchDate != null)
    {
      int years = new DateTime.now().difference(launcDate).inDays ~/
          365;
      print('Launched: $launchYear ($years ago)');
    }
    else
    {
      print('Unlaunched');
    }
  }
}

// inheritance (single)
class Orbiter extends Spacecraft
{
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
    : super(name, launchDate);
}

void main()
{
  print("Hello World");
  print(fibonacci(20));

  // use Spacecraft class
  var voyager = new Spacecraft('Voyager I', new DateTime(1977, 9, 5));
  voyager.describe();
  var voyager3 = new Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
  var valkyrie = new Obrbiter('Valkyrie I', new DateTime(2017, 1, 20), 50);
  valkyire.describe();
}