#ifndef MAIN_HTTP_H_
#define MAIN_HTTP_H_


#include "esp_log.h"
#include "esp_http_client.h"


esp_err_t _http_event_handle(esp_http_client_event_t *evt);
void http_post(float incremental, float total, float voltage, float current, float power, float pf);


#endif /* MAIN_HTTP_H_ */


