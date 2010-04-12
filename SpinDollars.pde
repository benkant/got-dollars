int dollarPin = 9;
int ledPin = 13;
boolean hit = false;

void setup() {
  Serial.begin(9600);
  pinMode(dollarPin, OUTPUT);
  pinMode(ledPin, OUTPUT);
}

void loop() {
  int incomingByte = 0;
  if (Serial.available() > 0) {
    incomingByte = Serial.read();
  }
  
  if (incomingByte != 0) {
    digitalWrite(ledPin, HIGH);
    digitalWrite(dollarPin, HIGH);
    
    delay(1000);
    digitalWrite(ledPin, LOW);
    digitalWrite(dollarPin, LOW);
  }  
}
