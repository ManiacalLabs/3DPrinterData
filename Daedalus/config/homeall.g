; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Sun Feb 02 2020 20:26:36 GMT-0600 (Central Standard Time)
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X-305 Y305 F1800 ; move quickly to X or Y endstop and stop there (first pass)
G1 H1 X-305             ; home X axis
G1 H1 Y305             ; home Y axis
G1 X5 Y5 F6000          ; go back a few mm
G1 H1 X-305 F360        ; move slowly to X axis endstop once more (second pass)
G1 H1 Y305             ; then move slowly to Y axis endstop
G91 G1 Z5 F800 S2 ; lift z so we don't crash
G90 G1 X155 Y150 F6000 ; Move to the center of the bed
; M558  Fxxx sets the probing speed.
; Probe rapidly to get us in the right ballpark.
; This brings the bed up quickly but may be less accurate.
M558 F500
G30
; Probe again slowly for precision
M558 F50
G30







;G1 H1 Z-340 F360        ; move Z down stopping at the endstop
;G90                     ; absolute positioning
;G92 Z0                  ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F100             ; lift Z relative to current position
;G90                    ; absolute positioning


