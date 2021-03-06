#include "esp_log.h"
#include "esp_http_client.h"
#include "wifi.h"
#include "string.h"

static const char *TAG = "HTTP_CLIENT";


esp_err_t _http_event_handler(esp_http_client_event_t *evt)
{
    switch(evt->event_id) {
        case HTTP_EVENT_ERROR:
            ESP_LOGD(TAG, "HTTP_EVENT_ERROR");
            break;
        case HTTP_EVENT_ON_CONNECTED:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_CONNECTED");
            break;
        case HTTP_EVENT_HEADER_SENT:
            ESP_LOGD(TAG, "HTTP_EVENT_HEADER_SENT");
            break;
        case HTTP_EVENT_ON_HEADER:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_HEADER, key=%s, value=%s", evt->header_key, evt->header_value);
            break;
        case HTTP_EVENT_ON_DATA:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_DATA, len=%d", evt->data_len);
            if (!esp_http_client_is_chunked_response(evt->client)) {
            	// Write out data
                 printf("\n%.*s", evt->data_len, (char*)evt->data);
            }

            break;
        case HTTP_EVENT_ON_FINISH:
            ESP_LOGD(TAG, "HTTP_EVENT_ON_FINISH");
            break;
        case HTTP_EVENT_DISCONNECTED:
            ESP_LOGD(TAG, "HTTP_EVENT_DISCONNECTED");
            break;
    }
    return ESP_OK;
}

void http_post(float total, float voltage, float current, float power_active, float power_reactive, float power_apparent, float pf, int is_noload)
{
	esp_http_client_config_t config = {
		.url = "http://103.3.63.142/api/meter/meter-record/create/",
		.event_handler = _http_event_handler,
		.method = HTTP_METHOD_POST
	};
	esp_http_client_handle_t client = esp_http_client_init(&config);

	// POST
	char post_data[150];

	if (pf != pf) { // pf is NaN
		pf = 0;		//
	}				//

	if (is_noload) {
		power_active = 0;
		power_reactive = 0;
		power_apparent = 0;
		current = 0;
		pf = 0;
	}

	sprintf(post_data,
		"total_energy=%.4f&voltage=%.4f&current=%.4f&power_active=%.4f&power_reactive=%.4f&power_apparent=%.4f&pf=%.2f&noload=%d",
		total / 1000.0,
		voltage,
		current,
		power_active,
		power_reactive,
		power_apparent,
		pf,
		is_noload
	);

	esp_http_client_set_post_field(client, post_data, strlen(post_data));
	esp_err_t err = esp_http_client_perform(client);
	if (err == ESP_OK) {
		ESP_LOGI(TAG, "HTTP GET Status = %d, content_length = %d",
				esp_http_client_get_status_code(client),
				esp_http_client_get_content_length(client));
	} else {
		ESP_LOGE(TAG, "HTTP GET request failed: %s", esp_err_to_name(err));
	}

	esp_http_client_cleanup(client);
}
