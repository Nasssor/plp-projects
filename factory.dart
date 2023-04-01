class Car {
	String? make;
   	String? model;
   	String? yearMade;
   	bool? hasABS;
   
   Car(this.make,this.model,this.yearMade,this.hasABS);
   	factory Car.ford(String model, String yearMade, bool hasABS) {
    	return FordCar(model, yearMade, hasABS);
    }
}

class FordCar extends Car {
	FordCar(String model, String yearMade, bool hasABS): super("Ford", model, yearMade, hasABS);
 
}