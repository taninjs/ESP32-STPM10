

/* ESP HTTP Client Example
   This example code is in the Public Domain (or CC0 licensed, at your option.)
   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/

#ifndef _MAIN_WIFI_H_
#define _MAIN_WIFI_H_

#define WIFI_SSID "PEARL_LAB_STUDENT"
#define WIFI_PASSWORD "41414141424242420102030405"

void app_wifi_initialise(void);
void app_wifi_wait_connected();


#endif /* _MAIN_WIFI_H_ */