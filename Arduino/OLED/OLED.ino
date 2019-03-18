#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#define OLED_RESET 4
Adafruit_SSD1306 display(OLED_RESET);

int i = 0 ;
int v = 0 ;
String s;
String inData;
void setup() {
  Serial.begin(9600);
  display.begin(SSD1306_SWITCHCAPVCC, 0x3c); //initialize I2C addr 0x3c
}

void loop() {
  if (Serial.available() > 0)
  {
    s = Serial.readStringUntil('\n'); // Until CR (Carriage Return)
    Serial.println(s);
  }

  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(WHITE);
  display.setCursor(10, 0);
  display.println(s);
  display.println(i); i++;

  display.display();

  delay(1000);
}
