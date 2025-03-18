view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 10000ns sim:/memoria_instruction/address 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
