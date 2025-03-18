view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rs 
wave create -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rt 
wave create -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rd 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/RegWrite 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/RegWrite 
wave create -driver freeze -pattern random -initialvalue UUUUUUUU -period 300ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/WriteData 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00 -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rs 
wave create -driver freeze -pattern constant -value 01 -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rt 
wave create -driver freeze -pattern constant -value 10 -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rd 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/RegWrite 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/clk 
wave create -driver freeze -pattern clock -initialvalue 1 -period 200ns -dutycycle 50 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/clk 
wave create -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/RegWrite 
wave create -driver freeze -pattern counter -startvalue 00 -endvalue 11 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 1 0 -starttime 0ps -endtime 1000ps sim:/bancoregis_8bits/Rs 
wave create -driver freeze -pattern repeater -initialvalue 00 -period 200ns -sequence { 01 10 11  } -repeat forever -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rs 
wave create -driver freeze -pattern repeater -initialvalue 00 -period 200ns -sequence { 01 10 11  } -repeat forever -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rs 
WaveExpandAll -1
wave create -driver freeze -pattern repeater -initialvalue 01 -period 200ns -sequence { 00 10 11  } -repeat forever -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rt 
WaveExpandAll -1
wave create -driver freeze -pattern repeater -initialvalue 10 -period 200ns -sequence { 00 01 11  } -repeat forever -range 1 0 -starttime 0ns -endtime 10000ns sim:/bancoregis_8bits/Rd 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
