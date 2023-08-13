#include "RTClib.h"
#include <OneWire.h>
#include <DallasTemperature.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include<EEPROM.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64
#define OLED_RESET     -1 
#define SCREEN_ADDRESS 0x3C 
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

RTC_DS1307 rtc;
#define ONE_WIRE_BUS 2

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);

char daysOfTheWeek[7][12] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
int sec,statue=0;
DateTime now;
String command;
int DATETIME_EEPROM_ADDRESS=0;
int TEMP_EEPROM_ADDRESS=256;

union FloatByteConverter {
  float floatValue;
  byte byteArray[sizeof(float)];
};

void setup () {
  EEPROM.begin(512);
  Wire.begin();
  rtc.begin();
  Serial.begin(57600);
  sensors.begin();
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    for(;;); 
  }
  display.display();
  delay(200);
  display.clearDisplay();
  #ifndef ESP8266
    while (!Serial);
  #endif

  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    Serial.flush();
    while (1) delay(10);
  }

  if (! rtc.isrunning()) {
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  }
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(10, 0);
  now=rtc.now();
  sec=now.second()%5;
}

void saveTempToEEPROM(float value) {
  FloatByteConverter converter;
  converter.floatValue = value;

  for (int i = 0; i < sizeof(float); i++) {
    EEPROM.write(TEMP_EEPROM_ADDRESS + i, converter.byteArray[i]);
  }

  EEPROM.commit(); // Save changes to EEPROM
  TEMP_EEPROM_ADDRESS+=8;
  if(TEMP_EEPROM_ADDRESS>=336) TEMP_EEPROM_ADDRESS=256;
}

float retrieveTempFromEEPROM(int addr) {
  FloatByteConverter converter;

  for (int i = 0; i < sizeof(float); i++) {
    converter.byteArray[i] = EEPROM.read(addr + i);
  }

  return converter.floatValue;
}

void saveDateTimeToEEPROM(DateTime datetime) {
  byte year = datetime.year() - 2000;
  byte month = datetime.month();
  byte day = datetime.day();
  byte hour = datetime.hour();
  byte minute = datetime.minute();
  byte second = datetime.second();
  
  EEPROM.write(DATETIME_EEPROM_ADDRESS, year);
  EEPROM.write(DATETIME_EEPROM_ADDRESS + 1, month);
  EEPROM.write(DATETIME_EEPROM_ADDRESS + 2, day);
  EEPROM.write(DATETIME_EEPROM_ADDRESS + 3, hour);
  EEPROM.write(DATETIME_EEPROM_ADDRESS + 4, minute);
  EEPROM.write(DATETIME_EEPROM_ADDRESS + 5, second);
  EEPROM.commit();
  DATETIME_EEPROM_ADDRESS+=8;
  if(DATETIME_EEPROM_ADDRESS>=80) DATETIME_EEPROM_ADDRESS=0;
}

DateTime retrieveDateTimeFromEEPROM(int addr) {
  byte year = EEPROM.read(addr);
  byte month = EEPROM.read(addr + 1);
  byte day = EEPROM.read(addr + 2);
  byte hour = EEPROM.read(addr + 3);
  byte minute = EEPROM.read(addr + 4);
  byte second = EEPROM.read(addr + 5);
  
  return DateTime(year + 2000, month, day, hour, minute, second);
}

void printDateTime(DateTime datetime) {
  Serial.print(datetime.year());
  Serial.print("-");
  Serial.print(datetime.month(), DEC);
  Serial.print("-");
  Serial.print(datetime.day(), DEC);
  Serial.print(" ");
  Serial.print(datetime.hour(), DEC);
  Serial.print(":");
  Serial.print(datetime.minute(), DEC);
  Serial.print(":");
  Serial.print(datetime.second(), DEC);
  Serial.println();
}

void collectData(){
  now = rtc.now();
  if(now.second()%5==sec){
      saveDateTimeToEEPROM(now);
      display.print(now.year(), DEC);
      display.print('/');
      display.print(now.month(), DEC);
      display.print('/');
      display.print(now.day(), DEC);
      display.print(" (");
      display.print(daysOfTheWeek[now.dayOfTheWeek()]);
      display.print(") ");
      display.print(now.hour(), DEC);
      display.print(':');
      display.print(now.minute(), DEC);
      display.print(':');
      display.print(now.second(), DEC);
      display.println();

      sensors.requestTemperatures();
      float tempC = sensors.getTempCByIndex(0);
      if(tempC != DEVICE_DISCONNECTED_C) 
      {
        display.print("Temperature for the device 1 (index 0) is: ");
        display.println(tempC);
        saveTempToEEPROM(tempC);
      } 
      else
      {
        display.println("Error: Could not read temperature data");
      }
      display.display();
      delay(1000);
    }
}

void retrieveData(int location){
    DateTime d=retrieveDateTimeFromEEPROM(location);
    float t= retrieveTempFromEEPROM(256+location);
    printDateTime(d);
    Serial.print("Temperature for the device 1 (index 0) is: ");
    Serial.println(t);
}

void read(){
  int i;
  for(i=0;i<10;i++) retrieveData(i);
}

void loop () {
    if(Serial.available()){
      command=Serial.readStringUntil('\n');
      if(command.equals("STAT")) statue=1;
      if(command.equals("STOP")) statue=0;
      if(command.equals("READ")) read();
    }
    if(statue==1) collectData();
}
