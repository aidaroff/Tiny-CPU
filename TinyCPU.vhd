----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:29:35 06/01/2015 
-- Design Name: 
-- Module Name:    TinyCPU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TinyCPU is
    Port ( In : in  STD_LOGIC_VECTOR (11 downto 0);
           Clk : in  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (7 downto 0));
end TinyCPU;

architecture Behavioral of TinyCPU is

begin


end Behavioral;

