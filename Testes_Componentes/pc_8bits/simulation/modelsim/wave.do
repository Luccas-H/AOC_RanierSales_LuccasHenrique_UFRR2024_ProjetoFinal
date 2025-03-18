view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/pc_8bits/clk 
wave create -driver freeze -pattern random -initialvalue UUUUUUUU -period 200ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns sim:/pc_8bits/pc_in 
wave create -driver expectedOutput -pattern random -initialvalue UUUUUUUU -period 200ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns sim:/pc_8bits/pc_out 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern clock -initialvalue 1 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/pc_8bits/clk 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/pc_8bits/clk 
wave create -driver freeze -pattern clock -initialvalue U -period 10ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/pc_8bits/clk 
wave create -driver freeze -pattern repeater -initialvalue 11000100 -period 100ns -sequence { 00111011  } -repeat forever -range 7 0 -starttime 0ns -endtime 1000ns sim:/pc_8bits/pc_in 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 10ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/pc_8bits/clk 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/pc_8bits/clk 
wave create -driver freeze -pattern repeater -initialvalue 00111011 -period 200ns -sequence { 11000100  } -repeat forever -range 7 0 -starttime 0ns -endtime 10000ns sim:/pc_8bits/pc_in 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern repeater -initialvalue 10101010 -period 100ns -sequence { 11111111  } -repeat forever -range 7 0 -starttime 0ns -endtime 10000ns sim:/pc_8bits/pc_in 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ps -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern random -initialvalue 0 -period 200ns -random_type Uniform -seed 5 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern clock -initialvalue 0 -period 300ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/pc_8bits/clk 
wave create -driver freeze -pattern random -initialvalue 11111111 -period 400ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 10000ns sim:/pc_8bits/pc_in 
WaveExpandAll -1
wave create -driver freeze -pattern repeater -initialvalue 1 -period 50ns -sequence { 0  } -repeat forever -starttime 0ps -endtime 1000ps sim:/pc_8bits/reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/pc_8bits/reset 
WaveCollapseAll -1
wave clipboard restore
