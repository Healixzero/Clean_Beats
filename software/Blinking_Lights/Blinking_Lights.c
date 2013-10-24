/* *****************************************************************************
*
* Brent Honzaki
*
* Clean Beats Development
*
* Blinking lights testcode
* "Blinking_Lights.c"
*
*
* *****************************************************************************/

#include "Blinking_Lights.h"


int main ( void )
{
   Blink ( (long int) 5 );

   return 0;
}


/* Blink at a specific rate. the passed-in blink_freq is the desired
   frequency the LED should toggle at in Hz */
static void Blink ( long int blink_freq )
{  volatile int * green_led = (int*) ox10000010;
   volatile long int counter = 0;
   volatile long int max_count = 0;

   max_count = ( 50000000 / blink_freq );

   while ( counter < max_count)
   {  counter++;
      if ( counter = max_count)
      {  counter = 0;
         *(green_led) = !(*(green_led));  /* toggle LED */
      }
   }

}

