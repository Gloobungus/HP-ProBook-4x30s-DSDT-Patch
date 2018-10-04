// SSDT for 8x0 G2 Haswell

DefinitionBlock("", "SSDT", 2, "hack", "_8x0G2h", 0)
{
    #include "SSDT-RMCF.asl"
    #include "SSDT-RP05_DGFX_RDSS.asl"
    #include "SSDT-HACK.asl"
    #include "include/ALC282_HDEF.asl"
    #include "include/ALC282_HDAU.asl"
    #include "include/standard_PS2K.asl"
    #include "SSDT-KEY102.asl"
    #include "SSDT-USB-8x0-G2.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT-G2.asl"
    #include "include/disable_EH01.asl"
}
//EOF
