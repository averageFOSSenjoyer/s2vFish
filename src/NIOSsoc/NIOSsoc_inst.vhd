	component NIOSsoc is
		port (
			block0_export    : out   std_logic_vector(31 downto 0);                    -- export
			block1_export    : out   std_logic_vector(31 downto 0);                    -- export
			block2_export    : out   std_logic_vector(31 downto 0);                    -- export
			block3_export    : out   std_logic_vector(31 downto 0);                    -- export
			busy_export      : in    std_logic                     := 'X';             -- export
			clk_clk          : in    std_logic                     := 'X';             -- clk
			ende_export      : out   std_logic;                                        -- export
			key0_export      : out   std_logic_vector(31 downto 0);                    -- export
			key1_export      : out   std_logic_vector(31 downto 0);                    -- export
			key2_export      : out   std_logic_vector(31 downto 0);                    -- export
			key3_export      : out   std_logic_vector(31 downto 0);                    -- export
			out0_export      : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			out1_export      : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			out2_export      : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			out3_export      : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			reset_reset_n    : in    std_logic                     := 'X';             -- reset_n
			reset_1_export   : out   std_logic;                                        -- export
			sdram_clk_clk    : out   std_logic;                                        -- clk
			sdram_wire_addr  : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n : out   std_logic;                                        -- cas_n
			sdram_wire_cke   : out   std_logic;                                        -- cke
			sdram_wire_cs_n  : out   std_logic;                                        -- cs_n
			sdram_wire_dq    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm   : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n : out   std_logic;                                        -- ras_n
			sdram_wire_we_n  : out   std_logic;                                        -- we_n
			start_export     : out   std_logic;                                        -- export
			addr_export      : out   std_logic_vector(7 downto 0)                      -- export
		);
	end component NIOSsoc;

	u0 : component NIOSsoc
		port map (
			block0_export    => CONNECTED_TO_block0_export,    --     block0.export
			block1_export    => CONNECTED_TO_block1_export,    --     block1.export
			block2_export    => CONNECTED_TO_block2_export,    --     block2.export
			block3_export    => CONNECTED_TO_block3_export,    --     block3.export
			busy_export      => CONNECTED_TO_busy_export,      --       busy.export
			clk_clk          => CONNECTED_TO_clk_clk,          --        clk.clk
			ende_export      => CONNECTED_TO_ende_export,      --       ende.export
			key0_export      => CONNECTED_TO_key0_export,      --       key0.export
			key1_export      => CONNECTED_TO_key1_export,      --       key1.export
			key2_export      => CONNECTED_TO_key2_export,      --       key2.export
			key3_export      => CONNECTED_TO_key3_export,      --       key3.export
			out0_export      => CONNECTED_TO_out0_export,      --       out0.export
			out1_export      => CONNECTED_TO_out1_export,      --       out1.export
			out2_export      => CONNECTED_TO_out2_export,      --       out2.export
			out3_export      => CONNECTED_TO_out3_export,      --       out3.export
			reset_reset_n    => CONNECTED_TO_reset_reset_n,    --      reset.reset_n
			reset_1_export   => CONNECTED_TO_reset_1_export,   --    reset_1.export
			sdram_clk_clk    => CONNECTED_TO_sdram_clk_clk,    --  sdram_clk.clk
			sdram_wire_addr  => CONNECTED_TO_sdram_wire_addr,  -- sdram_wire.addr
			sdram_wire_ba    => CONNECTED_TO_sdram_wire_ba,    --           .ba
			sdram_wire_cas_n => CONNECTED_TO_sdram_wire_cas_n, --           .cas_n
			sdram_wire_cke   => CONNECTED_TO_sdram_wire_cke,   --           .cke
			sdram_wire_cs_n  => CONNECTED_TO_sdram_wire_cs_n,  --           .cs_n
			sdram_wire_dq    => CONNECTED_TO_sdram_wire_dq,    --           .dq
			sdram_wire_dqm   => CONNECTED_TO_sdram_wire_dqm,   --           .dqm
			sdram_wire_ras_n => CONNECTED_TO_sdram_wire_ras_n, --           .ras_n
			sdram_wire_we_n  => CONNECTED_TO_sdram_wire_we_n,  --           .we_n
			start_export     => CONNECTED_TO_start_export,     --      start.export
			addr_export      => CONNECTED_TO_addr_export       --       addr.export
		);

