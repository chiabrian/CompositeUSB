/*
 * USB CDC-ACM Demo
 *
 * This file may be used by anyone for any purpose and may be used as a
 * starting point making your own application using M-Stack.
 *
 * It is worth noting that M-Stack itself is not under the same license as
 * this file.
 *
 * M-Stack is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  For details, see sections 7, 8, and 9
 * of the Apache License, version 2.0 which apply to this file.  If you have
 * purchased a commercial license for this software from Signal 11 Software,
 * your commerical license superceeds the information in this header.
 *
 * Alan Ott
 * Signal 11 Software
 * 2014-05-12
 */

#include "usb.h"
#include <xc.h>
#include <string.h>
#include <stdio.h>
#include "usb_config.h"
#include "usb_ch9.h"
#include "usb_cdc.h"
#include "usb_hid.h"
#include "hardware.h"

#ifdef MULTI_CLASS_DEVICE
static uint8_t cdc_interfaces[] = { 0 };
#endif

volatile uint32_t tmr_ms = 0;

void sys_init(void)
{
    //RED LED
    TRISBbits.TRISB0 = 0;
    ANSELBbits.ANSB0 = 0;
    
    //Green LED
    TRISBbits.TRISB1 = 0;
    ANSELBbits.ANSB1 = 0;
    
    RPOR5bits.RP24R = 0x0004;   //RP24/RAA9->UART2:U2TX
    RPINR9bits.U2RXR = 0x005;   //RP5/RA4->UART2:U2RX    

    U2MODEbits.CLKSEL = 1;      //SYSCLK
    U2BRG = 12;                 //115200 Baud, (CLK / (16 * Baud)) - 1
    U2STAbits.UTXEN = 1;        //Enable UART Transmit
    U2STAbits.URXEN = 1;        //Enable UART Receive
    
    U2MODEbits.ON = 1;          //Enable to UART
}

void cdc_loopback_handler(uint8_t ep)
{
    if (usb_is_configured() &&
        !usb_out_endpoint_halted(ep) &&
        usb_out_endpoint_has_data(ep)) {
        const unsigned char *out_buf;
        size_t out_buf_len;

        /* Check for an empty transaction. */
        out_buf_len = usb_get_out_buffer(ep, &out_buf);
        if (out_buf_len <= 0)
        {

        }
        else
        {
            /* Loop data back to the PC */

            /* Wait until the IN endpoint can accept it */
            while (usb_in_endpoint_busy(ep))
                ;

            /* Copy contents of OUT buffer to IN buffer
             * and send back to host. */
            memcpy(usb_get_in_buffer(ep), out_buf, out_buf_len);
            usb_send_in_buffer(ep, out_buf_len);

            /* Send a zero-length packet if the transaction
             * length was the same as the endpoint
             * length. This is for demo purposes. In real
             * life, you only need to do this if the data
             * you're transferring ends on a multiple of
             * the endpoint length. */
            if (out_buf_len == 64) {
                /* Wait until the IN endpoint can accept it */
                while (usb_in_endpoint_busy(ep))
                    ;
                usb_send_in_buffer(ep, 0);
            }
        }
        usb_arm_out_endpoint(ep);
    }
}

int main(void)
{

    hardware_init();
    sys_init();
#ifdef MULTI_CLASS_DEVICE
	cdc_set_interface_list(cdc_interfaces, sizeof(cdc_interfaces));
#endif
	usb_init();

	while (1) {

        if(tmr_ms >=100)
        {
            tmr_ms = 0;
            PORTBINV = 1;
        }
        
        cdc_loopback_handler(2);
        cdc_loopback_handler(4);
        cdc_loopback_handler(6);

		#ifndef USB_USE_INTERRUPTS
		usb_service();
		#endif
	}

	return 0;
}

/* Callbacks. These function names are set in usb_config.h. */
void app_set_configuration_callback(uint8_t configuration)
{

}

uint16_t app_get_device_status_callback()
{
	return 0x0000;
}

void app_endpoint_halt_callback(uint8_t endpoint, bool halted)
{

}

int8_t app_set_interface_callback(uint8_t interface, uint8_t alt_setting)
{
	return 0;
}

int8_t app_get_interface_callback(uint8_t interface)
{
	return 0;
}

void app_out_transaction_callback(uint8_t endpoint)
{

}

void app_in_transaction_complete_callback(uint8_t endpoint)
{

}

int8_t app_unknown_setup_request_callback(const struct setup_packet *setup)
{
	/* To use the CDC device class, have a handler for unknown setup
	 * requests and call process_cdc_setup_request() (as shown here),
	 * which will check if the setup request is CDC-related, and will
	 * call the CDC application callbacks defined in usb_cdc.h. For
	 * composite devices containing other device classes, make sure
	 * MULTI_CLASS_DEVICE is defined in usb_config.h and call all
	 * appropriate device class setup request functions here.
	 */
	return process_cdc_setup_request(setup);
}

int16_t app_unknown_get_descriptor_callback(const struct setup_packet *pkt, const void **descriptor)
{
	return -1;
}

void app_start_of_frame_callback(void)
{
    tmr_ms++;
}

void app_usb_reset_callback(void)
{

}

/* CDC Callbacks. See usb_cdc.h for documentation. */

int8_t app_send_encapsulated_command(uint8_t interface, uint16_t length)
{
	return -1;
}

int16_t app_get_encapsulated_response(uint8_t interface,
                                      uint16_t length, const void **report,
                                      usb_ep0_data_stage_callback *callback,
                                      void **context)
{
	return -1;
}

int8_t app_set_comm_feature_callback(uint8_t interface,
                                     bool idle_setting,
                                     bool data_multiplexed_state)
{
	return -1;
}

int8_t app_clear_comm_feature_callback(uint8_t interface,
                                       bool idle_setting,
                                       bool data_multiplexed_state)
{
	return -1;
}

int8_t app_get_comm_feature_callback(uint8_t interface,
                                     bool *idle_setting,
                                     bool *data_multiplexed_state)
{
	return -1;
}

static struct cdc_line_coding line_coding =
{
	115200,
	CDC_CHAR_FORMAT_1_STOP_BIT,
	CDC_PARITY_NONE,
	8,
};

static struct cdc_line_coding line_coding2 =
{
	115200,
	CDC_CHAR_FORMAT_1_STOP_BIT,
	CDC_PARITY_NONE,
	8,
};

static struct cdc_line_coding line_coding3 =
{
	115200,
	CDC_CHAR_FORMAT_1_STOP_BIT,
	CDC_PARITY_NONE,
	8,
};

int8_t app_set_line_coding_callback(uint8_t interface,
                                    const struct cdc_line_coding *coding)
{
    if(interface < 2)
    {
        line_coding = *coding;
    }
    else if(interface < 4)
    {
        line_coding2 = *coding;
    }
    else
    {
        line_coding3 = *coding;
    }
	return 0;
}

int8_t app_get_line_coding_callback(uint8_t interface,
                                    struct cdc_line_coding *coding)
{
	/* This is where baud rate, data, stop, and parity bits are set. */
    if(interface < 2)
    {
        *coding = line_coding;
    }
    else if(interface < 4)
    {
        *coding = line_coding2;
    }
    else
    {
        *coding = line_coding3;
    }
	return 0;
}

int8_t app_set_control_line_state_callback(uint8_t interface,
                                           bool dtr, bool dts)
{
	return 0;
}

int8_t app_send_break_callback(uint8_t interface, uint16_t duration)
{
	return 0;
}

#ifdef _PIC14E
void interrupt isr()
{
	usb_service();
}
#elif _PIC18

#ifdef __XC8
void interrupt high_priority isr()
{
	usb_service();
}
#elif _PICC18
#error need to make ISR
#endif

#endif
