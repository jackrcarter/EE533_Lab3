VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL clr
        SIGNAL d(71:0)
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL ce
        SIGNAL d(15:0)
        SIGNAL d(31:16)
        SIGNAL d(47:32)
        SIGNAL d(63:48)
        SIGNAL d(71:64)
        SIGNAL q(71:64)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        SIGNAL q(71:0)
        PORT Input clk
        PORT Input clr
        PORT Input d(71:0)
        PORT Input ce
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 1040 2272 R0
        INSTANCE XLXI_3 1040 1808 R0
        INSTANCE XLXI_4 1040 1392 R0
        INSTANCE XLXI_5 1040 928 R0
        INSTANCE XLXI_6 1040 480 R0
        BEGIN BRANCH clk
            WIRE 656 2144 816 2144
            WIRE 816 2144 912 2144
            WIRE 912 2144 1040 2144
            WIRE 912 352 1040 352
            WIRE 912 352 912 800
            WIRE 912 800 912 1264
            WIRE 912 1264 912 1680
            WIRE 912 1680 912 2144
            WIRE 912 1680 1040 1680
            WIRE 912 1264 1040 1264
            WIRE 912 800 928 800
            WIRE 928 800 1040 800
        END BRANCH
        BEGIN BRANCH clr
            WIRE 656 2240 816 2240
            WIRE 816 2240 976 2240
            WIRE 976 2240 1040 2240
            WIRE 976 448 1040 448
            WIRE 976 448 976 896
            WIRE 976 896 1040 896
            WIRE 976 896 976 1360
            WIRE 976 1360 1040 1360
            WIRE 976 1360 976 1776
            WIRE 976 1776 976 2240
            WIRE 976 1776 1040 1776
        END BRANCH
        IOMARKER 656 2144 clk R180 28
        IOMARKER 656 2240 clr R180 28
        IOMARKER 720 2368 d(71:0) R180 28
        BEGIN BRANCH d(71:0)
            WIRE 720 2368 832 2368
            BEGIN DISPLAY 832 2368 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 656 2080 ce R180 28
        BEGIN BRANCH ce
            WIRE 656 2080 816 2080
            WIRE 816 2080 848 2080
            WIRE 848 2080 1040 2080
            WIRE 848 288 1040 288
            WIRE 848 288 848 736
            WIRE 848 736 1040 736
            WIRE 848 736 848 1200
            WIRE 848 1200 1040 1200
            WIRE 848 1200 848 1616
            WIRE 848 1616 848 2080
            WIRE 848 1616 1040 1616
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 656 2016 1040 2016
            BEGIN DISPLAY 656 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 656 1552 1040 1552
            BEGIN DISPLAY 656 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 640 1136 1040 1136
            BEGIN DISPLAY 640 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 640 672 1040 672
            BEGIN DISPLAY 640 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(71:64)
            WIRE 640 224 1040 224
            BEGIN DISPLAY 640 224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1424 224 1600 224
            BEGIN DISPLAY 1600 224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1424 672 1600 672
            BEGIN DISPLAY 1600 672 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1424 1136 1600 1136
            BEGIN DISPLAY 1600 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1424 1552 1600 1552
            BEGIN DISPLAY 1600 1552 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1424 2016 1600 2016
            BEGIN DISPLAY 1600 2016 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 1104 2368 1264 2368
            BEGIN DISPLAY 1104 2368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1264 2368 q(71:0) R0 28
    END SHEET
END SCHEMATIC
