/* *****************************************************************************
*
* Brent Honzaki
*
* Clean Beats Development
*
* Blinking lights testcode
* "Blinking_Lights.h"
*
*
* *****************************************************************************/

//#include "all_types.h"
//#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>

#define Clk_Div 10000000 /* devide by value for a 50MHz -> 5Hz Clk */

