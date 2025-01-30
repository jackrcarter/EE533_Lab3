VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL match
        SIGNAL XLXN_8(6:0)
        SIGNAL XLXN_9(55:0)
        SIGNAL XLXN_10
        SIGNAL datacomp(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL datain(111:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL datain(71:16)
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        PORT Output match
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Input datain(111:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2025 1 29 22 26 5
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(63:8)
            PIN match XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(55:0)
            PIN match XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(71:16)
            PIN match XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(79:24)
            PIN match XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(87:32)
            PIN match XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(95:40)
            PIN match XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(103:48)
            PIN match XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_9 comparator
            PIN a(55:0) datacomp(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN b(55:0) datain(111:56)
            PIN match XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_10 or8
            PIN I0 XLXN_37
            PIN I1 XLXN_36
            PIN I2 XLXN_35
            PIN I3 XLXN_34
            PIN I4 XLXN_33
            PIN I5 XLXN_32
            PIN I6 XLXN_31
            PIN I7 XLXN_30
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1328 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1328 432 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1328 1072 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1328 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1328 1712 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1328 2032 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1328 2352 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 1328 2672 R0
        END INSTANCE
        INSTANCE XLXI_10 2224 1712 R0
        BEGIN BRANCH match
            WIRE 2480 1424 2496 1424
            WIRE 2496 1424 2656 1424
        END BRANCH
        IOMARKER 2656 1424 match R0 28
        BEGIN BRANCH datacomp(55:0)
            WIRE 704 272 1104 272
            WIRE 1104 272 1120 272
            WIRE 1120 272 1328 272
            WIRE 1104 272 1104 592
            WIRE 1104 592 1104 912
            WIRE 1104 912 1104 1232
            WIRE 1104 1232 1104 1552
            WIRE 1104 1552 1104 1872
            WIRE 1104 1872 1104 2192
            WIRE 1104 2192 1104 2512
            WIRE 1104 2512 1328 2512
            WIRE 1104 2192 1328 2192
            WIRE 1104 1872 1328 1872
            WIRE 1104 1552 1328 1552
            WIRE 1104 1232 1328 1232
            WIRE 1104 912 1328 912
            WIRE 1104 592 1328 592
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 704 400 1216 400
            WIRE 1216 400 1328 400
            WIRE 1216 400 1216 720
            WIRE 1216 720 1216 1040
            WIRE 1216 1040 1216 1360
            WIRE 1216 1360 1216 1680
            WIRE 1216 1680 1216 2000
            WIRE 1216 2000 1216 2320
            WIRE 1216 2320 1216 2640
            WIRE 1216 2640 1328 2640
            WIRE 1216 2320 1328 2320
            WIRE 1216 2000 1328 2000
            WIRE 1216 1680 1328 1680
            WIRE 1216 1360 1328 1360
            WIRE 1216 1040 1328 1040
            WIRE 1216 720 1328 720
        END BRANCH
        IOMARKER 704 272 datacomp(55:0) R180 28
        IOMARKER 704 400 wildcard(6:0) R180 28
        BEGIN BRANCH datain(111:0)
            WIRE 768 112 848 112
            WIRE 848 112 1072 112
            BEGIN DISPLAY 1072 112 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 768 112 datain(111:0) R180 28
        BEGIN BRANCH datain(55:0)
            WIRE 1040 336 1328 336
            BEGIN DISPLAY 1040 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 1040 656 1328 656
            BEGIN DISPLAY 1040 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 1040 1296 1328 1296
            BEGIN DISPLAY 1040 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 1040 1616 1328 1616
            BEGIN DISPLAY 1040 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 1040 1936 1328 1936
            BEGIN DISPLAY 1040 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 1040 2256 1328 2256
            BEGIN DISPLAY 1040 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 1040 2576 1328 2576
            BEGIN DISPLAY 1040 2576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 1040 976 1328 976
            BEGIN DISPLAY 1040 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1712 272 2224 272
            WIRE 2224 272 2224 1200
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1712 592 1968 592
            WIRE 1968 592 1968 1264
            WIRE 1968 1264 2224 1264
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1712 912 1952 912
            WIRE 1952 912 1952 1328
            WIRE 1952 1328 2224 1328
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1712 1232 1936 1232
            WIRE 1936 1232 1936 1392
            WIRE 1936 1392 2224 1392
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1712 1552 1968 1552
            WIRE 1968 1456 1968 1552
            WIRE 1968 1456 2224 1456
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1712 1872 1984 1872
            WIRE 1984 1520 1984 1872
            WIRE 1984 1520 2224 1520
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1712 2192 2000 2192
            WIRE 2000 1584 2000 2192
            WIRE 2000 1584 2224 1584
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 1712 2512 2224 2512
            WIRE 2224 1648 2224 2512
        END BRANCH
    END SHEET
END SCHEMATIC
