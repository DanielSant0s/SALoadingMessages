//                                   _ZN14CLoadingScreen16SetLoadingBarMsgEPKcS1_:
//                                                                            # CODE XREF: _Z13LoadingScreenPKcS0_S0_+C↑p
//                                                                            # _Z7TheGamev+4C↑p
//
//                                   var_20          = -0x20
//                                   var_10          = -0x10

patch=0,EE,20592D70,extended,27BDFFE0                                     addiu   $sp, -0x20
patch=0,EE,20592D74,extended,FFBF0010                                     sd      $ra, 0x20+var_10($sp)
patch=0,EE,20592D78,extended,7FB00000                                     sq      $s0, 0x20+var_20($sp)
patch=0,EE,20592D7C,extended,00A02021                                     move    $a0, $a1 #Get the second loading bar msg from stack
patch=0,EE,20592D80,extended,0C153DF4                                     jal     _printf
patch=0,EE,20592D84,extended,00000000                                     nop
patch=0,EE,20592D88,extended,3C040059                                     lui     $a0, 0x5A
patch=0,EE,20592D8C,extended,24842DAC                                     li      $a0, endl
patch=0,EE,20592D90,extended,0C153DF4                                     jal     _printf
patch=0,EE,20592D94,extended,00000000                                     li      nop
patch=0,EE,20592D98,extended,DFBF0010                                     ld      $ra, 0x20+var_10($sp)
patch=0,EE,20592D9C,extended,7BB00000                                     lq      $s0, 0x20+var_20($sp)
patch=0,EE,20592DA0,extended,03E00008                                     jr      $ra
patch=0,EE,20592DA4,extended,27BD0020                                     addiu   $sp, 0x20
patch=0,EE,20592DA8,extended,00000000                                     nop
patch=0,EE,20592DAC,extended,0000000A                                    .endl: "\n"
patch=0,EE,20592DB0,extended,00000000                                     nop
