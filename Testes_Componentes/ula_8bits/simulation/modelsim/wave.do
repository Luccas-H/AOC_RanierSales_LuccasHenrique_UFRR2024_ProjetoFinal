view wave 
wave clipboard store
wave create -driver freeze -pattern random -initialvalue UUUUUUUU -period 100ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/A 
wave create -driver freeze -pattern random -initialvalue UUUUUUUU -period 200ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/B 
wave create -driver freeze -pattern random -initialvalue 0000 -period 300ps -random_type Uniform -seed 5 -range 3 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/OpCode 
wave create -driver freeze -pattern random -initialvalue 0000 -period 300ns -random_type Uniform -seed 5 -range 3 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/OpCode 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 0111 -type Range -direction Up -period 300ns -step 1 -repeat forever -range 3 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/OpCode 
wave create -driver freeze -pattern constant -value 10101110 -range 7 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/A 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00101101 -range 7 0 -starttime 0ps -endtime 1000ps sim:/ula_8bits/B 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 0111 -type Range -direction Up -period 100ns -step 1 -repeat forever -range 3 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/OpCode 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 00101101 -range 7 0 -starttime 0ns -endtime 1000ns sim:/ula_8bits/B 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
