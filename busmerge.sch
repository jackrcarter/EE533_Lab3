VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL q(111:0)
        SIGNAL db(63:0)
        SIGNAL da(47:0)
        PORT Output q(111:0)
        PORT Input db(63:0)
        PORT Input da(47:0)
    END NETLIST
    BEGIN SHEET 1 1760 1360
        BEGIN BRANCH q(111:0)
            WIRE 960 640 1120 640
            WIRE 960 640 960 800
        END BRANCH
        IOMARKER 1120 640 q(111:0) R0 28
        BEGIN BRANCH db(63:0)
            WIRE 528 800 864 800
        END BRANCH
        IOMARKER 528 800 db(63:0) R180 28
        BEGIN BRANCH da(47:0)
            WIRE 528 640 864 640
        END BRANCH
        IOMARKER 528 640 da(47:0) R180 28
        BUSTAP 960 640 864 640
        BUSTAP 960 800 864 800
    END SHEET
END SCHEMATIC
