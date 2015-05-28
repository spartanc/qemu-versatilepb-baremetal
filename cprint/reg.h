/*
 * =====================================================================================
 *
 *       Filename:  reg.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2015/05/28 22時54分53秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#ifndef _REG_H
#define _REG_H
#define UART0_BASE 0x101f1000
#define STATUS_OFFSET 0x06
#define TX_FULL 0x20

#define UART0 ((volatile unsigned int *)UART0_BASE)
#define UART0_STATUS ((volatile unsigned int *)(UART0_BASE + STATUS_OFFSET))
#endif // _REG_H
