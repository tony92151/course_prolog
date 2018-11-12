/* q1 */
makelower:-get0(A),change(A).

change(10).
change(X):-(X<91,X>64,Y is X+32,put(Y);put(X)),makelower.


/* q2 */

copyterms(Inputf,Ouputf):-seeing(A),see(Inputf),
                            telling(B),tell(Ouputf),task,
                            seen,see(A),told,tell(B).

task:-read(X),process(X).
process(Y):-(Y==end_of_file;writeq(Y),nl,task).

/* q3 */

readfile(Input,Output):-see(Input),tell(Output),loop(15),told,seen.

loop(X):-(X == 0;get(A),write(A),nl,Y is X-1,loop(Y)).


/* q4 */

combine(Input,Input_,Output):-see(Input),tell(Output),com,see(Input_),com2,told,seen.

com:-read(Y),(Y==end;writeq(Y),write('.'),nl,com).
com2:-read(K),(K==end;writeq(K),write('.'),nl,com2).

/* q5 */

compare(Input,Input_):-paretask(Input,Input_),see(Input),seen,see(Input_),seen.

paretask(Input,Input_):-see(Input),read(X),see(Input_),read(Y),
                        (X==end,X==end,write('End');
                            (X==Y,write('Same');write('Different')),nl,paretask(Input,Input_)
                        ).
