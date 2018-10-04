// SSDT for 4x40s

DefinitionBlock("", "SSDT", 2, "hack", "_4x40", 0)
{
    #include "SSDT-RMCF.asl"
    #include "SSDT-PEGP_DGFX_RDSS.asl"
    #include "SSDT-HACK.asl"
    #include "include/IDT_76d9_HDEF.asl"
    #include "include/standard_PS2K.asl"
    #include "SSDT-KEY102.asl"
    #include "SSDT-USB-4x40s.asl"
    #include "SSDT-EH01.asl"
    #include "SSDT-EH02.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT.asl"
}
//EOF
