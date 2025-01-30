VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL match
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL a(55:0)
        SIGNAL amask(6)
        SIGNAL XLXN_21
        SIGNAL amask(5)
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL XLXN_24
        SIGNAL XLXN_60
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL b(39:32)
        SIGNAL a(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL a(55:48)
        PORT Output match
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Input a(55:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_7 and7
            PIN I0 XLXN_36
            PIN I1 XLXN_35
            PIN I2 XLXN_34
            PIN I3 XLXN_33
            PIN I4 XLXN_32
            PIN I5 XLXN_31
            PIN I6 XLXN_29
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_28
            PIN O XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_27
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_26
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_22
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_15 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_21
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_22
            PIN O XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_23
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_24
            PIN O XLXN_33
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_11 2400 832 R0
        INSTANCE XLXI_7 2848 1264 R0
        INSTANCE XLXI_13 2400 1728 R0
        INSTANCE XLXI_12 2400 1280 R0
        BEGIN BRANCH amask(2)
            WIRE 2304 768 2368 768
            WIRE 2368 768 2400 768
            BEGIN DISPLAY 2368 768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2304 1216 2352 1216
            WIRE 2352 1216 2400 1216
            BEGIN DISPLAY 2352 1216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2304 1664 2352 1664
            WIRE 2352 1664 2400 1664
            BEGIN DISPLAY 2352 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 2160 1600 2400 1600
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 2160 1152 2400 1152
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 2160 704 2400 704
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1552 1952 2832 1952
            WIRE 2832 1008 2848 1008
            WIRE 2832 1008 2832 1952
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 2656 736 2752 736
            WIRE 2752 736 2752 1072
            WIRE 2752 1072 2848 1072
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 2656 1184 2752 1184
            WIRE 2752 1136 2752 1184
            WIRE 2752 1136 2848 1136
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 2656 1632 2848 1632
            WIRE 2848 1200 2848 1632
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 416 224 416 304
            WIRE 416 304 416 336
            BEGIN DISPLAY 416 336 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 416 224 a(55:0) R270 28
        IOMARKER 176 224 b(55:0) R270 28
        BEGIN BRANCH b(55:0)
            WIRE 176 224 176 320
            WIRE 176 320 176 336
            BEGIN DISPLAY 176 336 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 656 112 amask(6:0) R180 28
        INSTANCE XLXI_1 608 800 R0
        INSTANCE XLXI_2 608 1248 R0
        INSTANCE XLXI_3 608 1696 R0
        INSTANCE XLXI_15 608 2144 R0
        INSTANCE XLXI_8 1296 704 R0
        INSTANCE XLXI_9 1296 1152 R0
        INSTANCE XLXI_10 1296 1600 R0
        INSTANCE XLXI_14 1296 2048 R0
        BEGIN BRANCH amask(6)
            WIRE 1104 640 1184 640
            WIRE 1184 640 1296 640
            BEGIN DISPLAY 1184 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 992 576 1296 576
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1104 1088 1168 1088
            WIRE 1168 1088 1296 1088
            BEGIN DISPLAY 1168 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 992 1024 1296 1024
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 992 1472 1296 1472
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1104 1536 1184 1536
            WIRE 1184 1536 1296 1536
            BEGIN DISPLAY 1184 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1104 1984 1184 1984
            WIRE 1184 1984 1296 1984
            BEGIN DISPLAY 1184 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 992 1920 1296 1920
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1552 1056 1568 1056
            WIRE 1568 880 1568 1056
            WIRE 1568 880 2848 880
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1552 944 1552 1504
            WIRE 1552 944 2848 944
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1552 528 1552 608
            WIRE 1552 528 2848 528
            WIRE 2848 528 2848 816
        END BRANCH
        INSTANCE XLXI_4 1776 928 R0
        INSTANCE XLXI_5 1776 1376 R0
        INSTANCE XLXI_6 1776 1824 R0
        BEGIN BRANCH amask(6:0)
            WIRE 656 112 1008 112
            WIRE 1008 112 1008 640
            WIRE 1008 640 1008 1088
            WIRE 1008 1088 1008 1536
            WIRE 1008 1536 1008 1984
            WIRE 1008 112 2208 112
            WIRE 2208 112 2208 768
            WIRE 2208 768 2208 1216
            WIRE 2208 1216 2208 1664
        END BRANCH
        BUSTAP 1008 640 1104 640
        BUSTAP 1008 1088 1104 1088
        BUSTAP 1008 1536 1104 1536
        BUSTAP 1008 1984 1104 1984
        BUSTAP 2208 768 2304 768
        BUSTAP 2208 1216 2304 1216
        BUSTAP 2208 1664 2304 1664
        IOMARKER 3328 1008 match R0 28
        BEGIN BRANCH match
            WIRE 3104 1008 3328 1008
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 544 480 608 480
            BEGIN DISPLAY 544 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 544 672 608 672
            BEGIN DISPLAY 544 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 528 928 608 928
            BEGIN DISPLAY 528 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 544 1120 608 1120
            BEGIN DISPLAY 544 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 528 1568 608 1568
            BEGIN DISPLAY 528 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 544 1376 608 1376
            BEGIN DISPLAY 544 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 528 1824 608 1824
            BEGIN DISPLAY 528 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 528 2016 608 2016
            BEGIN DISPLAY 528 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1696 608 1776 608
            BEGIN DISPLAY 1696 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1696 800 1776 800
            BEGIN DISPLAY 1696 800 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1712 1056 1776 1056
            BEGIN DISPLAY 1712 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1712 1248 1776 1248
            BEGIN DISPLAY 1712 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1712 1504 1776 1504
            BEGIN DISPLAY 1712 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1712 1696 1776 1696
            BEGIN DISPLAY 1712 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
