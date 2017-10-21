Credit: Colen Casey - https://www.facebook.com/groups/216503422189783/

The ";" after the command lets you add comments after the command without interfering with the command

Home axis:
G28 ; home all axes
G28 X0 ; Home X only
G28 Y0 ; Home Y only
G28 Z0 ; Home Z only    NOTE: NEVER home Z at the end of a print

M84 ; Disable Steppers

M106 S0 ; Turn off fans (this is for the parts cooler fan or on the stock trex-2+ it will turn off the fans on the extruder)

LiFt Z Axis:
G91		; Open for command
G1 Z15.000 F800	; Lift Z 15mm
G90		; Close Command

LED Bar Off/On:
M225		 ; Turn LEDs On
M224		 ; Turn off Lights

Prime/Purge:
G91		; set for command
G1 E15.00 F250	; extrude 15mm
G90		; close command

Commands you probably will not need:

M104 S0 T0 ; Turn off extruder 1 (primary)
M104 S0 T1 ; Turn off extruder 2

M140 S0 ; turn off bed

M851 Z0.00	; Sets Z probe offset to 0    Easy way to change z-offset

T0	; Makes extruder 1 (primary) the active extruder for all commands following this one
T1	; Makes extruder 2 the active extruder for all commands following this one
