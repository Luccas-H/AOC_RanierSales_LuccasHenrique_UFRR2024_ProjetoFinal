view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/memoria_dados/we 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/memoria_dados/clk 
wave create -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 200ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 10000ns sim:/memoria_dados/address 
WaveExpandAll -1
wave create -driver freeze -pattern random -initialvalue UUUUUUUU -period 300ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 10000ns sim:/memoria_dados/data_in 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/memoria_dados/we 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/memoria_dados/we 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/memoria_dados/we 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/memoria_dados/we 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/memoria_dados/we 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/memoria_dados/we 
WaveCollapseAll -1
wave clipboard restore
