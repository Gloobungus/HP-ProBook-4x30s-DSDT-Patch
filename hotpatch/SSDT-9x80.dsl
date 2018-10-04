// SSDT for 9x80m Haswell

DefinitionBlock("", "SSDT", 2, "hack", "_9x80", 0)
{
    #include "SSDT-RMCF.asl"
    #include "SSDT-RP05_DGFX_RDSS.asl"
    #include "SSDT-HACK.asl"
    #include "include/ALC280_HDEF.asl"
    #include "include/ALC280_HDAU.asl"
    #include "include/standard_PS2K.asl"
    #include "SSDT-KEY87.asl"
    #include "SSDT-USB-9x80.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT.asl"
    #include "include/disable_EH01.asl"
}
//EOF
