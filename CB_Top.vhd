LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;


------------------- Entity Declaration for DEO Board --------------------
entity DE0 is
    Port (
        --//////////////////    Clock Input     ///////////////////
        CLOCK_50           : in    STD_logic;                      -- 50 MHz
        CLOCK_50_2         : in    STD_logic;                      -- 50 MHz

        --//////////////////    Push Button     ///////////////////
        BUTTON             : in    STD_logic_vector (2 downto 0);  -- Pushbutton[2:0]

        --//////////////////    DPDT Switch     ///////////////////
        SW                 : in    STD_logic_vector (9 downto 0);  -- Toggle Switch[9:0]

        --//////////////////    7-SEG Dispaly   ///////////////////
        HEX0_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 0
        HEX0_DP            : out   STD_logic;                      -- Seven Segment Digit DP 0
        HEX1_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 1
        HEX1_DP            : out   STD_logic;                      -- Seven Segment Digit DP 1
        HEX2_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 2
        HEX2_DP            : out   STD_logic;                      -- Seven Segment Digit DP 2
        HEX3_D             : out   STD_logic_vector (6 downto 0);  -- Seven Segment Digit 3
        HEX3_DP            : out   STD_logic;                      -- Seven Segment Digit DP 3
        --//////////////////////    LED     ///////////////////////
        LEDG               : out   STD_logic_vector (9 downto 0);  -- LED Green[9:0]

        --///////////////////   SDRAM Interface     ///////////////
        DRAM_CLK            : out   STD_logic;                     -- SDRAM Clock
        DRAM_ADDR           : out   STD_logic_vector(11 downto 0); -- SDRAM Address bus 13 Bits
        DRAM_BA_1           : out   STD_logic;                     -- SDRAM Bank Address 1
        DRAM_BA_0           : out   STD_logic;                     -- SDRAM Bank Address 0
        DRAM_CAS_N          : out   STD_logic;                     -- SDRAM Column Address Strobe
        DRAM_CKE            : out   STD_logic;                     -- SDRAM Clock Enable
        DRAM_CS_N           : out   STD_logic;                     -- SDRAM Chip Select
        DRAM_DQ             : inout STD_logic_vector(15 downto 0); -- SDRAM Data bus 16 Bits
        DRAM_UDQM           : out   STD_logic;                     -- SDRAM High-byte Data Mask
        DRAM_LDQM           : out   STD_logic;                     -- SDRAM Low-byte Data Mask
        DRAM_RAS_N          : out   STD_logic;                     -- SDRAM Row Address Strobe
        DRAM_WE_N           : out   STD_logic;                     -- SDRAM Write Enable

        --//////////////////    Flash Interface     ///////////////
        FL_DQ               : inout STD_logic_vector(14 downto 0); -- FLASH Data bus 15 Bits
        FL_DQ15_AM1         : inout STD_logic;                     -- FLASH Data bus Bit 15 or Address A-1
        FL_ADDR             : out   STD_logic_vector(21 downto 0); -- FLASH Address bus 22 Bits
        FL_WE_N             : out   STD_logic;                     -- FLASH Write Enable
        FL_RST_N            : out   STD_logic;                     -- FLASH Reset
        FL_OE_N             : out   STD_logic;                     -- FLASH Output Enable
        FL_CE_N             : out   STD_logic;                     -- FLASH Chip Enable
        FL_WP_N             : out   STD_logic;                     -- FLASH Hardware Write Protect
        FL_BYTE_N           : out   STD_logic;                     -- FLASH Selects 8/16-bit mode
        FL_RY               : in    STD_logic;                     -- FLASH Ready/Busy



        --//////////////////    SD_Card Interface   ///////////////
        SD_DAT0             : inout STD_logic;                     -- SD Card Data 0
        SD_DAT3             : inout STD_logic;                     -- SD Card Data 3
        SD_CMD              : inout STD_logic;                     -- SD Card Command Signal
        SD_CLK              : out   STD_logic;                     -- SD Card Clock
        SD_WP_N             : in    STD_logic;                     -- SD Card Write Protect

        --//////////////////    GPIO    ///////////////////////////
        GPIO0_CLKIN         : in    STD_logic_vector(1  downto 0);  -- GPIO Connection 0 Clock In Bus
        GPIO0_CLKOUT        : out   STD_logic_vector(1  downto 0);  -- GPIO Connection 0 Clock Out Bus
        GPIO0_D             : inout STD_logic_vector(31 downto 0); -- GPIO Connection 0 Data Bus
        GPIO1_CLKIN         : in    STD_logic_vector(1  downto 0);  -- GPIO Connection 1 Clock In Bus
        GPIO1_CLKOUT        : out   STD_logic_vector(1  downto 0);  -- GPIO Connection 1 Clock Out Bus
        GPIO1_D             : inout STD_logic_vector(31 downto 0)  -- GPIO Connection 1 Data Bus


    --  --//////////////////    LCD Module 16X2     ///////////////
    --  LCD_BLON            : out   STD_logic;                     -- LCD Back Light ON/OFF
    --  LCD_RW              : out   STD_logic;                     -- LCD Read/Write Select, 0 = Write, 1 = Read
    --  LCD_EN              : out   STD_logic;                     -- LCD Enable
    --  LCD_RS              : out   STD_logic;                     -- LCD Command/Data Select, 0 = Command, 1 = Data
    --  LCD_DATA            : inout STD_logic_vector(7 downto 0);  -- LCD Data bus 8 bits
    
        --//////////////////////    UART    ///////////////////////
        UART_TXD            : inout STD_logic;                     -- UART Transmitter
        UART_RXD            : inout STD_logic;                     -- UART Receiver
        UART_CTS            : inout STD_logic;                     -- UART Clear To Send
        UART_RTS            : inout STD_logic;                     -- UART Request To Send
    
    --  --//////////////////    PS2     ///////////////////////////
    --  PS2_KBDAT           : inout STD_logic;                     -- PS2 Keyboard Data
    --  PS2_KBCLK           : inout STD_logic;                     -- PS2 Keyboard Clock
    --  PS2_MSDAT           : inout STD_logic;                     -- PS2 Mouse Data
    --  PS2_MSCLK           : inout STD_logic;                     -- PS2 Mouse Clock
    
    --  --//////////////////    VGA     ///////////////////////////
    --  VGA_HS              : out   STD_logic;                     -- VGA H_SYNC
    --  VGA_VS              : out   STD_logic;                     -- VGA V_SYNC
    --  VGA_R               : out   STD_logic_vector(3 downto 0);  -- VGA Red[3:0]
    --  VGA_G               : out   STD_logic_vector(3 downto 0);  -- VGA Green[3:0]
    --  VGA_B               : out   STD_logic_vector(3 downto 0);  -- VGA Blue[3:0]
    );

end DE0;

architecture CB of DE0 is

   component Clean_Beats_Nios2 is
        port (
            clk_clk                               : in    std_logic := 'X'; -- clk
            rs232_external_interface_RXD          : in    std_logic := 'X'; -- RXD
            rs232_external_interface_TXD          : out   std_logic;        -- TXD
            sd_card_external_interface_b_SD_cmd   : inout std_logic := 'X'; -- b_SD_cmd
            sd_card_external_interface_b_SD_dat   : inout std_logic := 'X'; -- b_SD_dat
            sd_card_external_interface_b_SD_dat3  : inout std_logic := 'X'; -- b_SD_dat3
            sd_card_external_interface_o_SD_clock : out   std_logic         -- o_SD_clock
        );
    end component Clean_Beats_Nios2;

    NIOS_Core : component Clean_Beats_Nios2
        port map (
            clk_clk                               => CLOCK_50,          --                        clk.clk
            rs232_external_interface_RXD          => UART_RXD,          --   rs232_external_interface.RXD
            rs232_external_interface_TXD          => UART_TXD,          --                           .TXD
            sd_card_external_interface_b_SD_cmd   => SD_CMD,            -- sd_card_external_interface.b_SD_cmd
            sd_card_external_interface_b_SD_dat   => SD_DAT0,           --                           .b_SD_dat
            sd_card_external_interface_b_SD_dat3  => SD_DAT3,           --                           .b_SD_dat3
            sd_card_external_interface_o_SD_clock => SD_CLK             --                           .o_SD_clock
        );

   
