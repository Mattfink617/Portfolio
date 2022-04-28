#include <SoftwareSerial.h>
#include <TinyGPS.h>
#include <ESP8266WiFi.h>
#include <BlynkSimpleEsp8266.h>
#include <LiquidCrystal.h>

/* This code demonstrates the normal use of the TinyGPS module.
   It assumes that you have a 9600-baud  GPS device 
   on pins 4(rx) and 3(tx).*/

TinyGPS gps;
SoftwareSerial ss(4, 3);

static void print_int(unsigned long val, unsigned long invalid, int len);
static void print_date(TinyGPS &gps);
static void print_str(const char *str, int len);
// allows you to track the position of the tractor at all times on the controller
void setup()
{
  Serial.begin(9600);
  
  Serial.print("TinyGPS library v. "); Serial.println(TinyGPS::library_version());
  Serial.println();
  Serial.println("Sats HDOP Latitude  Longitude  Fix  Date       Time     Date );
  Serial.println("          (deg)     (deg)      Age                      Age  (m) );
  Serial.println("-----------------------------------------------------------------);

  ss.begin(9600);
}

scrollDisplayLeft()
// any failed messeges that may pop up because of a bug
void loop()
{
  float flat, flon;
  unsigned long age, date, time, chars = 0;
  unsigned short sentences = 0, failed = 0;
  static const double _LAT = 51.508131, _LON = -0.128002; // _LON = Longitude   _LAT = Lattitude
  
  gps.stats(&chars, &sentences, &failed);
  print_int(chars, 0xFFFFFFFF, 6);
  print_int(sentences, 0xFFFFFFFF, 10);
  print_int(failed, 0xFFFFFFFF, 9);
  Serial.println();
  
scrollDisplayLeft()

/*******Speedometer Code********/



//calculations
//tire radius ~ 13.5 inches
//circumference = pi*2*r =~85 inches
//max speed of 35mph =~ 616inches/second
//max rps =~7.25

#define reed A0//pin connected to read switch

//storage variables
float radius = 13.5;// tire radius (in inches)- change this based on the tractor tire size

int reedVal;
long timer = 0;// time between one full rotation 
float mph = 0.00;
float circumference;
boolean backlight;

int maxReedCounter = 100;//min time (in ms) of one rotation
int reedCounter;


void setup(){
  // the speedometer tracks the speed of the vehicle by taking the circumference of the tire and how fast its moving
  reedCounter = maxReedCounter;
  circumference = 2*3.14*radius;
  pinMode(1,OUTPUT);//tx
  pinMode(reed, INPUT);
  
  Serial.write(12);//clear

void checkBacklight(){
  backlight = digitalRead(2);
  if (backlight){
    Serial.write(17);//turn backlight on
  }
  else{
    Serial.write(18);//turn backlight off
  }
}
//displaying MPH to the LCD screen
void displayMPH(){
  Serial.write(12);//clear
  Serial.write("Speed =");
  Serial.write(13);//start a new line
  Serial.print(mph);
  Serial.write(" MPH ");
  //Serial.write("0.00 MPH ");
}

scrollDisplayLeft()
// displaying MPH every second
void loop(){
  //print mph once every second
  displayMPH();
  delay(1000);
  checkBacklight();
}



/*********** WIFI Card implementation ************/


//Not planning to have as much done here as we havent gone over 
//a lot of this kind of component
char auth[] = "Please setup the wifi to use";

// Your WiFi credentials.
// Set password to "" for open networks.
char ssid[] = "your wifi name";
char pass[] = "your wifi password";

scrollDisplayLeft()


/*********LCD Screen Display*********/



// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 7, en = 8, d4 = 9, d5 = 10, d6 = 11, d7 = 12;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup() {
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("You are using a GPS nav ");
}
void loop() {
  // set the cursor to column 0, line 1
  // (note: line 1 is the second row, since counting begins with 0):
  lcd.setCursor(0, 1);
  // print the number of seconds since reset:
  lcd.print(millis() / 1000);
}
scrollDisplayLeft()


/*********Sonar Hit detection*********/


//the first trig pin will send out a signal
//the second trig pin picks up the sound within miliseconds
const int trigPin = 2;
const int echoPin = 3;

long duration;
int distance;

void setup() {
   pinMode(trigPin, OUTPUT);
   pinMode(echoPin, INPUT);
   Serial.begin(9600);

}

void loop() {
  digitalWrite(trigPin, LOW);// constantly sends out a sinal from the 1st trig pin for the 2nd to pick up
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH);// constantly updates the 2nd trig pin so that it detects objects in the way
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);
  distance = duration*0.034/2; // the formula for measuring the distance away from something

  
  Serial.print("Distance:");
  Serial.print(distance );
}
scrollDisplayLeft()
