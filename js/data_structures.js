var colors = ["blue", "green", "orange", "purple"];
console.log(colors);

var names = ["Ed", "Tony", "Beyonce", "Warren_Buffet"];
console.log(names);

colors.push("pink");
names.push("Honey_Boo_Boo");
var horses ={};
for (var i = 0; i < colors.length; i++) {
  horses[names[i]] = colors[i];
}
console.log(horses);

console.log("-----------");


function Car(make, year, dapper) {
  this.make = make;
  this.year = year;
  this.dapper = dapper;
  
  this.quality = function(){
    if (dapper){
      console.log("Nice Car.");
    }
    else {
      console.log("I'll just take an Uber");
    }
  };
}

var dreamCar = new Car("BMW", 2016, true);
console.log(dreamCar.make + ": " + dreamCar.year);
dreamCar.quality();

console.log("-----------");

var dreamCar = new Car("Beat Hooptie", 1974, false);
console.log(dreamCar.make + ": " + dreamCar.year);
dreamCar.quality();

console.log("-----------");

var dreamCar = new Car("Benz", 2016, true);
console.log(dreamCar.make + ": " + dreamCar.year);
dreamCar.quality();