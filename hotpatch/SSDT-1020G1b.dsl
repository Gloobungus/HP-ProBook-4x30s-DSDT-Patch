// SSDT for EliteBook Folio 1020 G1 (Broadwell)

DefinitionBlock("", "SSDT", 2, "hack", "_1020G1b", 0)
{
    #include "SSDT-RMCF.asl"
    #include "SSDT-RP05_DGFX_RDSS.asl"
    #include "SSDT-HACK.asl"
    #include "include/ALC286_HDEF.asl"
    #include "include/ALC286_HDAU.asl"
    //#include "include/standard_PS2K.asl"
    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    Scope (_SB.PCI0.LPCB.PS2K)
    {
        // overrides for VoodooPS2 configuration...
        Name(RMCF, Package()
        {
            #include "include/standard_PS2K_data.asl"
            #include "include/enable_mouse.asl"
        })
    }
    #include "SSDT-KEY87.asl"
    #include "SSDT-USB-1020-G1.asl"
    #include "SSDT-XHC.asl"
    #include "SSDT-BATT-G2.asl"
    #include "include/disable_EH01.asl"
}
//EOF
