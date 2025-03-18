view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 1 0 -starttime 0ns -endtime 1000ns sim:/mux_4x1/S 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ps -endtime 1000ps sim:/mux_4x1/D0 
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ns -endtime 1000ns sim:/mux_4x1/D0 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ns -endtime 1000ns sim:/mux_4x1/D1 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ns -endtime 1000ns sim:/mux_4x1/D2 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 11 -range 1 0 -starttime 0ns -endtime 1000ns sim:/mux_4x1/D3 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
