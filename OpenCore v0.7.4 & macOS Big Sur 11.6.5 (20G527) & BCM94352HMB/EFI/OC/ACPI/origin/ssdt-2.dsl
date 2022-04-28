/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt-2.aml, Sun Oct 10 08:22:17 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000248 (584)
 *     Revision         0x02
 *     Checksum         0xF8
 *     OEM ID           "INTEL "
 *     OEM Table ID     "sensrhub"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120913 (538052883)
 */
DefinitionBlock ("ssdt-2.aml", "SSDT", 2, "INTEL ", "sensrhub", 0x00000000)
{

    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.I2C0.DFUD, UnknownObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (BID_, FieldUnitObj)
    External (SDS0, FieldUnitObj)
    External (USBH, FieldUnitObj)

    Scope (\)
    {
        Device (SHAD)
        {
            Name (_HID, EisaId ("INT33D0"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Method (_STA, 0, Serialized)  // _STA: Status
            {
                If (LOr (And (SDS0, One), And (USBH, One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Name (PGCE, Zero)
                Name (PGCD, Zero)
                Name (PGCG, 0x2E)
                Name (DFUE, Zero)
                Name (DFUD, Zero)
                Name (OLDV, Zero)
                Name (PGCV, Zero)
                Name (DFUV, Zero)
                If (LEqual (Arg0, ToUUID ("03c868d5-563f-42a8-9f57-9a18d949b7cb")))
                {
                    If (LEqual (BID, 0x20))
                    {
                        Store (0x3A, PGCG)
                    }

                    If (LEqual (One, ToInteger (Arg1)))
                    {
                        While (One)
                        {
                            Store (ToInteger (Arg2), _T_0)
                            If (LEqual (_T_0, Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x0F                                           
                                })
                            }
                            Else
                            {
                                If (LEqual (_T_0, One))
                                {
                                    Store (DerefOf (Index (Arg3, Zero)), PGCE)
                                    Store (DerefOf (Index (Arg3, One)), PGCD)
                                    Store (\_SB.GGOV (0x02010016), OLDV)
                                    \_SB.SGOV (0x02010016, PGCE)
                                    If (LGreater (PGCD, Zero))
                                    {
                                        Sleep (PGCD)
                                        \_SB.GGOV (0x02010016)
                                        OLDV
                                    }

                                    If (LEqual (\_SB.GGOV (0x02010016), One))
                                    {
                                        Sleep (0x96)
                                        If (LEqual (\_SB.GGOV (0x02010014), One)) {}
                                        Else
                                        {
                                            Notify (\_SB.PCI0.I2C0.DFUD, One)
                                        }
                                    }

                                    Return (Zero)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x02))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), DFUE)
                                        Store (DerefOf (Index (Arg3, One)), DFUD)
                                        Store (\_SB.GGOV (0x02010014), OLDV)
                                        \_SB.GGOV (0x02010014)
                                        DFUE
                                        If (LGreater (DFUD, Zero))
                                        {
                                            Sleep (DFUD)
                                            \_SB.GGOV (0x02010014)
                                            OLDV
                                        }

                                        Return (Zero)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x03))
                                        {
                                            Store (\_SB.GGOV (0x02010014), DFUV)
                                            Store (\_SB.GGOV (0x02010016), PGCV)
                                            Return (Package (0x02)
                                            {
                                                PGCV, 
                                                DFUV
                                            })
                                        }
                                    }
                                }
                            }

                            Break
                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Zero)
            }
        }
    }
}

