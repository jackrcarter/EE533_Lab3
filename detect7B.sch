VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL match
        SIGNAL hwregA(63:0)
        SIGNAL pipe1(71:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL pipe0(71:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_25(111:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL XLXN_28
        SIGNAL match_en
        SIGNAL mrst
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        PORT Output match
        PORT Input hwregA(63:0)
        PORT Input pipe1(71:0)
        PORT Input clk
        PORT Input ce
        PORT Input match_en
        PORT Input mrst
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 1 30 6 27 22
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -160 0 -160 
            LINE N 64 -32 0 -32 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 1 30 6 29 47
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -160 384 -160 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 1 31 6 12 28
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN datain(111:0) XLXN_25(111:0)
            PIN match XLXN_28
            PIN wildcard(6:0) hwregA(62:56)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_5 fdce
            PIN C clk
            PIN CE XLXN_39
            PIN CLR XLXN_38
            PIN D XLXN_39
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_7 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_28
            PIN O XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_1 reg9B
            PIN ce ce
            PIN clk clk
            PIN clr XLXN_38
            PIN d(71:0) pipe1(71:0)
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_25(111:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 2720 1760
        BEGIN BRANCH hwregA(63:0)
            WIRE 320 128 480 128
            BEGIN DISPLAY 480 128 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 320 128 hwregA(63:0) R180 28
        BEGIN BRANCH pipe1(71:0)
            WIRE 304 320 464 320
        END BRANCH
        BEGIN INSTANCE XLXI_1 464 544 R0
        END INSTANCE
        IOMARKER 304 320 pipe1(71:0) R180 28
        BEGIN BRANCH clk
            WIRE 304 384 336 384
            WIRE 336 384 464 384
            WIRE 336 384 336 992
            WIRE 336 992 336 1280
            WIRE 336 1280 1168 1280
            WIRE 336 992 1856 992
            WIRE 1856 992 1920 992
            WIRE 1920 896 1968 896
            WIRE 1920 896 1920 992
        END BRANCH
        IOMARKER 304 384 clk R180 28
        BEGIN BRANCH ce
            WIRE 304 448 464 448
        END BRANCH
        IOMARKER 304 448 ce R180 28
        INSTANCE XLXI_4 1168 1408 R0
        BEGIN BRANCH match
            WIRE 1632 592 1632 832
            WIRE 1632 832 1680 832
            WIRE 1632 592 2384 592
            WIRE 2384 592 2384 768
            WIRE 2384 768 2480 768
            WIRE 2352 768 2384 768
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 848 320 912 320
            BEGIN DISPLAY 912 320 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 528 832 576 832
            BEGIN DISPLAY 528 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 528 896 576 896
            BEGIN DISPLAY 528 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25(111:0)
            WIRE 960 832 1200 832
        END BRANCH
        BEGIN INSTANCE XLXI_2 1200 864 R0
        END INSTANCE
        BEGIN BRANCH hwregA(55:0)
            WIRE 1104 768 1200 768
            BEGIN DISPLAY 1104 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1104 704 1200 704
            BEGIN DISPLAY 1104 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_7 1680 896 R0
        IOMARKER 2480 768 match R0 28
        BEGIN BRANCH XLXN_28
            WIRE 1584 704 1680 704
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1504 944 1664 944
            WIRE 1664 768 1680 768
            WIRE 1664 768 1664 944
        END BRANCH
        IOMARKER 1504 944 match_en R180 28
        BEGIN BRANCH mrst
            WIRE 1056 1152 1168 1152
        END BRANCH
        IOMARKER 1056 1152 mrst R180 28
        BEGIN BRANCH XLXN_38
            WIRE 256 512 448 512
            WIRE 448 512 464 512
            WIRE 256 512 256 1424
            WIRE 256 1424 1968 1424
            WIRE 1552 1152 1968 1152
            WIRE 1968 1152 1968 1424
            WIRE 1968 992 1968 1152
        END BRANCH
        INSTANCE XLXI_5 1968 1024 R0
        BEGIN BRANCH XLXN_39
            WIRE 1936 768 1952 768
            WIRE 1952 768 1968 768
            WIRE 1952 768 1952 832
            WIRE 1952 832 1968 832
        END BRANCH
        BEGIN INSTANCE XLXI_8 576 928 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
