# vernam_chipher
Design a system to implement Vernam cipher (http://www.cs.miami.edu/home/burt/learning/Csc609.051/notes/02.html ) (one-time pad). Vernam proposed a bit- wise exclusive or of the message stream (m(i)) with a random stream (z(i)) which was shared by sender and receipient. PicoBlaze_1 computes cipher text C(i)=m(i)EXORz(i) and writes back to memory. In this design, random stream z(i) is generated by PicoBlaze_2 with using SIMON alg. (seed value z(0)=12h) and is read by Picoblaze_1 to compute cipher text. The message is written in RAM.
