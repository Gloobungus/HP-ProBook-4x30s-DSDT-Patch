#define LAYOUTID 4

// inject properties for audio

    External(_SB.PCI0.HDEF, DeviceObj)
    Method(_SB.PCI0.HDEF._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
            "layout-id", Buffer(4) { LAYOUTID, 0, 0, 0 },
            "hda-gfx", Buffer() { "onboard-1" },
            "PinConfigurations", Buffer() { },
        })
    }

// CodecCommander configuration

    Name(_SB.PCI0.HDEF.RMCF, Package()
    {
        "CodecCommander", Package()
        {
            "Version", 0x020600,
            "10ec_0280", Package()
            {
                "Custom Commands", Package()
                {
                    Package(){}, // signifies Array instead of Dictionary
                    Package()
                    {
                        // 0x1a SET_PIN_WIDGET_CONTROL 0x25
                        // Node 0x1a - Pin Control (In Enable / VRefEn)
                        "Command", Buffer() { 0x01, 0xa7, 0x07, 0x25 },
                        "On Init", ">y",
                        "On Sleep", ">n",
                        "On Wake", ">y",
                    },
                    Package()
                    {
                        // 0x15 SET_UNSOLICITED_ENABLE 0x83
                        "Command", Buffer() { 0x01, 0x57, 0x08, 0x83 },
                        "On Init", ">y",
                        "On Sleep", ">n",
                        "On Wake", ">y",
                    },
                },
            },
        },
    })

//EOF
