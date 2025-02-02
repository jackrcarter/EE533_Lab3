VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(71:0)
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_3
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL XLXN_10
        SIGNAL clk
        SIGNAL fifowrite
        SIGNAL drop_pkt
        SIGNAL XLXN_29
        SIGNAL XLXN_30(7:0)
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35(7:0)
        SIGNAL XLXN_36(7:0)
        SIGNAL XLXN_37(7:0)
        SIGNAL XLXN_38(7:0)
        SIGNAL XLXN_39
        SIGNAL XLXN_40
        SIGNAL fiforead
        SIGNAL XLXN_42
        SIGNAL XLXN_43
        SIGNAL valid_data
        SIGNAL XLXN_45
        SIGNAL XLXN_47(7:0)
        SIGNAL XLXN_48
        SIGNAL out_fifo(71:0)
        SIGNAL XLXN_54(7:0)
        SIGNAL XLXN_55
        SIGNAL rst
        SIGNAL XLXN_59
        SIGNAL XLXN_60
        SIGNAL XLXN_61
        SIGNAL XLXN_62
        SIGNAL XLXN_63
        SIGNAL XLXN_64
        SIGNAL XLXN_67(7:0)
        SIGNAL XLXN_69
        SIGNAL XLXN_70(7:0)
        SIGNAL XLXN_71(7:0)
        SIGNAL XLXN_73
        SIGNAL XLXN_76
        SIGNAL XLXN_77
        SIGNAL XLXN_79
        SIGNAL XLXN_81
        SIGNAL XLXN_82
        SIGNAL XLXN_84
        SIGNAL XLXN_85
        SIGNAL XLXN_87
        SIGNAL XLXN_88
        SIGNAL XLXN_90
        SIGNAL XLXN_91
        SIGNAL XLXN_92
        SIGNAL XLXN_93
        PORT Input in_fifo(71:0)
        PORT Input firstword
        PORT Input lastword
        PORT Input clk
        PORT Input fifowrite
        PORT Input drop_pkt
        PORT Input fiforead
        PORT Output valid_data
        PORT Output out_fifo(71:0)
        PORT Input rst
        BEGIN BLOCKDEF synch_dp_mem
            TIMESTAMP 2025 1 30 22 56 54
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_60
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_59
        END BLOCK
        BEGIN BLOCK XLXI_5 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE XLXN_33
            PIN CLR rst
            PIN D(7:0) XLXN_35(7:0)
            PIN Q(7:0) XLXN_30(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) XLXN_35(7:0)
            PIN B(7:0) XLXN_38(7:0)
            PIN EQ XLXN_40
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) XLXN_38(7:0)
            PIN B(7:0) XLXN_30(7:0)
            PIN EQ XLXN_39
        END BLOCK
        BEGIN BLOCK XLXI_9 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_42
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8ce
            PIN C clk
            PIN CE XLXN_42
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) XLXN_38(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_11 cb8cle
            PIN C clk
            PIN CE XLXN_34
            PIN CLR rst
            PIN D(7:0) XLXN_30(7:0)
            PIN L XLXN_29
            PIN CEO
            PIN Q(7:0) XLXN_35(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_12 reg9B
            PIN ce XLXN_3
            PIN clk clk
            PIN clr rst
            PIN d(71:0) in_fifo(71:0)
            PIN q(71:0) XLXN_1(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 and3b2
            PIN I0 XLXN_39
            PIN I1 XLXN_40
            PIN I2 fiforead
            PIN O XLXN_42
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 XLXN_59
            PIN I1 XLXN_60
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_15 and2b1
            PIN I0 XLXN_29
            PIN I1 XLXN_10
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_16 vcc
            PIN P XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_1 synch_dp_mem
            PIN addra(7:0) XLXN_35(7:0)
            PIN dina(71:0) XLXN_1(71:0)
            PIN wea XLXN_34
            PIN clka clk
            PIN addrb(7:0) XLXN_38(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_10 1696 1920 R0
        BEGIN INSTANCE XLXI_12 2240 624 R0
        END INSTANCE
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2192 400 2240 400
        END BRANCH
        IOMARKER 2192 400 in_fifo(71:0) R180 28
        BEGIN BRANCH XLXN_3
            WIRE 1952 272 1952 528
            WIRE 1952 528 2240 528
        END BRANCH
        INSTANCE XLXI_16 1888 272 R0
        BEGIN BRANCH firstword
            WIRE 240 240 304 240
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 176 656 288 656
        END BRANCH
        INSTANCE XLXI_15 1216 816 R0
        BEGIN BRANCH XLXN_10
            WIRE 1024 560 1200 560
            WIRE 1200 560 1200 688
            WIRE 1200 688 1216 688
        END BRANCH
        INSTANCE XLXI_11 1840 1440 R0
        INSTANCE XLXI_4 1216 608 R0
        BEGIN BRANCH fifowrite
            WIRE 1168 352 1216 352
        END BRANCH
        IOMARKER 1168 352 fifowrite R180 28
        INSTANCE XLXI_13 1280 1856 R0
        INSTANCE XLXI_7 832 1776 R0
        INSTANCE XLXI_8 832 2192 R0
        BEGIN BRANCH drop_pkt
            WIRE 192 2336 336 2336
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 720 2336 1584 2336
            WIRE 1152 752 1216 752
            WIRE 1152 752 1152 1184
            WIRE 1152 1184 1584 1184
            WIRE 1584 1184 1840 1184
            WIRE 1584 1184 1584 2336
        END BRANCH
        BEGIN BRANCH XLXN_30(7:0)
            WIRE 768 1056 1248 1056
            WIRE 1248 1056 1840 1056
            WIRE 1248 1056 1248 1744
            WIRE 800 1744 1248 1744
            WIRE 800 1744 800 2064
            WIRE 800 2064 832 2064
        END BRANCH
        BEGIN BRANCH XLXN_39
            WIRE 1216 1968 1248 1968
            WIRE 1248 1792 1248 1968
            WIRE 1248 1792 1280 1792
        END BRANCH
        BEGIN BRANCH XLXN_40
            WIRE 1216 1552 1232 1552
            WIRE 1232 1552 1232 1728
            WIRE 1232 1728 1280 1728
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1104 1264 1280 1264
            WIRE 1280 1264 1280 1664
        END BRANCH
        IOMARKER 1104 1264 fiforead R180 28
        BEGIN BRANCH valid_data
            WIRE 2080 2304 2336 2304
        END BRANCH
        BEGIN BRANCH XLXN_35(7:0)
            WIRE 352 1056 384 1056
            WIRE 352 1056 352 1456
            WIRE 352 1456 800 1456
            WIRE 800 1456 832 1456
            WIRE 800 864 2640 864
            WIRE 2640 864 2640 976
            WIRE 2640 976 2640 1056
            WIRE 2640 976 2992 976
            WIRE 800 864 800 1456
            WIRE 2224 1056 2640 1056
        END BRANCH
        BEGIN BRANCH XLXN_1(71:0)
            WIRE 2624 400 2816 400
            WIRE 2816 400 2816 1008
            WIRE 2816 1008 2992 1008
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1600 352 1712 352
            WIRE 1712 352 1712 1248
            WIRE 1712 1248 1840 1248
            WIRE 1712 1248 1712 1488
            WIRE 1712 1488 2288 1488
            WIRE 2288 1040 2288 1488
            WIRE 2288 1040 2992 1040
        END BRANCH
        BEGIN BRANCH XLXN_38(7:0)
            WIRE 384 1760 784 1760
            WIRE 784 1760 784 1872
            WIRE 784 1872 832 1872
            WIRE 384 1760 384 2144
            WIRE 384 2144 2272 2144
            WIRE 784 1648 832 1648
            WIRE 784 1648 784 1760
            WIRE 2080 1664 2272 1664
            WIRE 2272 1664 2272 2144
            WIRE 2272 1200 2992 1200
            WIRE 2272 1200 2272 1664
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3280 1200 3296 1200
        END BRANCH
        BEGIN INSTANCE XLXI_1 2992 928 R0
        END INSTANCE
        IOMARKER 3296 1200 out_fifo(71:0) R0 28
        BEGIN BRANCH clk
            WIRE 128 2464 256 2464
            WIRE 256 2464 336 2464
            WIRE 256 368 304 368
            WIRE 256 368 256 480
            WIRE 256 480 1216 480
            WIRE 256 480 256 784
            WIRE 256 784 288 784
            WIRE 256 784 256 896
            WIRE 256 896 1616 896
            WIRE 1616 896 1616 1312
            WIRE 1616 1312 1616 1792
            WIRE 1616 1792 1696 1792
            WIRE 1616 1792 1616 2432
            WIRE 1616 2432 1696 2432
            WIRE 1616 1312 1840 1312
            WIRE 1616 896 2384 896
            WIRE 2384 896 2384 1168
            WIRE 2384 1168 2960 1168
            WIRE 2960 1168 2992 1168
            WIRE 2960 1168 2960 1392
            WIRE 2960 1392 2992 1392
            WIRE 256 896 256 1296
            WIRE 256 1296 304 1296
            WIRE 256 1296 256 2464
            WIRE 304 1184 304 1296
            WIRE 304 1184 384 1184
            WIRE 1616 464 2240 464
            WIRE 1616 464 1616 896
        END BRANCH
        BEGIN BRANCH rst
            WIRE 336 1280 384 1280
            WIRE 336 1280 336 2192
            WIRE 336 2192 1680 2192
            WIRE 1680 2192 1680 2528
            WIRE 1680 2528 1696 2528
            WIRE 1488 1888 1680 1888
            WIRE 1680 1888 1680 2192
            WIRE 1680 1888 1696 1888
            WIRE 1680 592 2240 592
            WIRE 1680 592 1680 1408
            WIRE 1680 1408 1680 1888
            WIRE 1680 1408 1840 1408
        END BRANCH
        INSTANCE XLXI_2 304 496 R0
        IOMARKER 240 240 firstword R180 28
        INSTANCE XLXI_3 288 912 R0
        IOMARKER 176 656 lastword R180 28
        INSTANCE XLXI_14 768 656 R0
        BEGIN BRANCH XLXN_60
            WIRE 688 240 688 528
            WIRE 688 528 768 528
        END BRANCH
        BEGIN BRANCH XLXN_59
            WIRE 672 656 688 656
            WIRE 688 592 768 592
            WIRE 688 592 688 656
        END BRANCH
        INSTANCE XLXI_6 384 1312 R0
        BEGIN BRANCH XLXN_33
            WIRE 320 1120 384 1120
            WIRE 320 1120 320 1344
            WIRE 320 1344 1488 1344
            WIRE 1472 720 1488 720
            WIRE 1488 720 1488 1344
        END BRANCH
        INSTANCE XLXI_9 1696 2560 R0
        BEGIN BRANCH XLXN_42
            WIRE 1536 1728 1568 1728
            WIRE 1568 1728 1696 1728
            WIRE 1568 1728 1568 2304
            WIRE 1568 2304 1696 2304
        END BRANCH
        IOMARKER 2336 2304 valid_data R0 28
        IOMARKER 1488 1888 rst R180 28
        INSTANCE XLXI_5 336 2592 R0
        IOMARKER 192 2336 drop_pkt R180 28
        IOMARKER 128 2464 clk R180 28
    END SHEET
END SCHEMATIC
