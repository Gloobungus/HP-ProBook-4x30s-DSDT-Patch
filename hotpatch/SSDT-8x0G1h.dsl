// SSDT for 8x0 G1 Haswell

DefinitionBlock("", "SSDT", 2, "hack", "_8x0G1h", 0)
{
    #define OVERRIDE_IGPI 0x04260000
    #define OVERRIDE_LMAX 0x1499
    #include "SSDT-RMCF.asl"
    #include "SSDT-RP05_DGFX_RDSS.asl"
    #include "SSDT-HACK.asl"
    #include "include/IDT_76e0_HDEF.asl"
    #include "include/IDT_76e0_HDAU.asl"
    #include "include/standard_PS2K.asl"
    #include "SSDT-KEY87.asl"
    #include "SSDT-USB-8x0-G1.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT.asl"
    #include "include/disable_EH01.asl"
}
//EOF
