library ieee;
use ieee.std_logic_1164.all;

entity top is
    port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        gpio_in  : in  std_logic_vector(7 downto 0);
        gpio_out : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of top is
    component microwatt_core
        port (
            clk : in  std_logic;
            rst : in  std_logic
        );
    end component;

    component gpio
        port (
            clk      : in  std_logic;
            rst      : in  std_logic;
            gpio_in  : in  std_logic_vector(7 downto 0);
            gpio_out : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    cpu_inst : microwatt_core
        port map (clk => clk, rst => rst);

    gpio_inst : gpio
        port map (clk => clk, rst => rst, gpio_in => gpio_in, gpio_out => gpio_out);
end architecture;

