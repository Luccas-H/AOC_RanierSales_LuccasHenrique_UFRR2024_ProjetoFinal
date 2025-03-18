view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1010 -range 3 0 -starttime 0ps -endtime 1000ps sim:/extensor_sinal/input_sig 
wave create -driver freeze -pattern constant -value 1010 -range 3 0 -starttime 0ns -endtime 1000ns sim:/extensor_sinal/input_sig 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
