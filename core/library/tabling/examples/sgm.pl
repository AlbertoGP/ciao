:- module(sgm, 
	[
	    test/1, 
	    result/1,
	    sg/2,
 %% 	    prueba/0,
	    spend_time/2
	]).

:- include(tabling_type).

:- dynamic results/1.

:- table sg/2.

spend_time(NT,T) :-
	abolish_all_tables,
        statistics(runtime,[_,_]),
	tp, abolish_all_tables,
        statistics(runtime,[_,Tt]),
	N is (NT / Tt) + 1,
        statistics(runtime,[_,_]),
        (
            between(1,N,_),
            tp, abolish_all_tables,
            fail
        ;
            true
        ),
        statistics(runtime,[_,Tfin]),
        (
            between(1,N,_),
            fail
        ;
            true
        ),
        statistics(runtime,[_,Tfin2]),
        T is (Tfin - Tfin2) / N.

tp :-
	sg(_,_), fail.
tp.

test(L):-
    abolish_all_tables,
    findall(sg(X,Y),sg(X,Y),Bag),
    sort(Bag,L).

sg(X,X).
sg(X,Y) :-
	edge(X,XX),
	sg(XX,YY),
	edge(Y,YY).

:-include('sg_edge.pl').

 %% edge(3,1).
 %% edge(3,2).
 %% edge(1,3).
 %% edge(3,0).
 %%  %% edge(2,0).
 %%  %% edge(1,0).

result([sg(_cb08,_cb08), sg(1,1),sg(1,2),
	sg(1,3),sg(1,4),sg(1,5),sg(1,6),sg(1,7),sg(1,8),sg(1,9),sg(1,10),
	sg(1,11),sg(1,12),sg(1,13),sg(1,14),sg(1,15),sg(1,16),sg(1,17),
	sg(1,18),sg(1,19),sg(1,20),sg(1,21),sg(1,22),sg(1,23),sg(1,24),
	sg(1,25),sg(1,26),sg(1,27),sg(1,28),sg(1,29),sg(1,30),sg(1,31),sg(1,32),sg(1,33),sg(1,34),sg(1,35),sg(1,36),sg(1,37),sg(1,38),sg(1,39),sg(1,40),sg(1,41),sg(1,42),sg(1,43),sg(1,44),sg(1,45),sg(1,46),sg(1,47),sg(1,48),sg(1,49),sg(1,50),sg(2,1),sg(2,2),sg(2,3),sg(2,4),sg(2,5),sg(2,6),sg(2,7),sg(2,8),sg(2,9),sg(2,10),sg(2,11),sg(2,12),sg(2,13),sg(2,14),sg(2,15),sg(2,16),sg(2,17),sg(2,18),sg(2,19),sg(2,20),sg(2,21),sg(2,22),sg(2,23),sg(2,24),sg(2,25),sg(2,26),sg(2,27),sg(2,28),sg(2,29),sg(2,30),sg(2,31),sg(2,32),sg(2,33),sg(2,34),sg(2,35),sg(2,36),sg(2,37),sg(2,38),sg(2,39),sg(2,40),sg(2,41),sg(2,42),sg(2,43),sg(2,44),sg(2,45),sg(2,46),sg(2,47),sg(2,48),sg(2,49),sg(2,50),sg(3,1),sg(3,2),sg(3,3),sg(3,4),sg(3,5),sg(3,6),sg(3,7),sg(3,8),sg(3,9),sg(3,10),sg(3,11),sg(3,12),sg(3,13),sg(3,14),sg(3,15),sg(3,16),sg(3,17),sg(3,18),sg(3,19),sg(3,20),sg(3,21),sg(3,22),sg(3,23),sg(3,24),sg(3,25),sg(3,26),sg(3,27),sg(3,28),sg(3,29),sg(3,30),sg(3,31),sg(3,32),sg(3,33),sg(3,34),sg(3,35),sg(3,36),sg(3,37),sg(3,38),sg(3,39),sg(3,40),sg(3,41),sg(3,42),sg(3,43),sg(3,44),sg(3,45),sg(3,46),sg(3,47),sg(3,48),sg(3,49),sg(3,50),sg(4,1),sg(4,2),sg(4,3),sg(4,4),sg(4,5),sg(4,6),sg(4,7),sg(4,8),sg(4,9),sg(4,10),sg(4,11),sg(4,12),sg(4,13),sg(4,14),sg(4,15),sg(4,16),sg(4,17),sg(4,18),sg(4,19),sg(4,20),sg(4,21),sg(4,22),sg(4,23),sg(4,24),sg(4,25),sg(4,26),sg(4,27),sg(4,28),sg(4,29),sg(4,30),sg(4,31),sg(4,32),sg(4,33),sg(4,34),sg(4,35),sg(4,36),sg(4,37),sg(4,38),sg(4,39),sg(4,40),sg(4,41),sg(4,42),sg(4,43),sg(4,44),sg(4,45),sg(4,46),sg(4,47),sg(4,48),sg(4,49),sg(4,50),sg(5,1),sg(5,2),sg(5,3),sg(5,4),sg(5,5),sg(5,6),sg(5,7),sg(5,8),sg(5,9),sg(5,10),sg(5,11),sg(5,12),sg(5,13),sg(5,14),sg(5,15),sg(5,16),sg(5,17),sg(5,18),sg(5,19),sg(5,20),sg(5,21),sg(5,22),sg(5,23),sg(5,24),sg(5,25),sg(5,26),sg(5,27),sg(5,28),sg(5,29),sg(5,30),sg(5,31),sg(5,32),sg(5,33),sg(5,34),sg(5,35),sg(5,36),sg(5,37),sg(5,38),sg(5,39),sg(5,40),sg(5,41),sg(5,42),sg(5,43),sg(5,44),sg(5,45),sg(5,46),sg(5,47),sg(5,48),sg(5,49),sg(5,50),sg(6,1),sg(6,2),sg(6,3),sg(6,4),sg(6,5),sg(6,6),sg(6,7),sg(6,8),sg(6,9),sg(6,10),sg(6,11),sg(6,12),sg(6,13),sg(6,14),sg(6,15),sg(6,16),sg(6,17),sg(6,18),sg(6,19),sg(6,20),sg(6,21),sg(6,22),sg(6,23),sg(6,24),sg(6,25),sg(6,26),sg(6,27),sg(6,28),sg(6,29),sg(6,30),sg(6,31),sg(6,32),sg(6,33),sg(6,34),sg(6,35),sg(6,36),sg(6,37),sg(6,38),sg(6,39),sg(6,40),sg(6,41),sg(6,42),sg(6,43),sg(6,44),sg(6,45),sg(6,46),sg(6,47),sg(6,48),sg(6,49),sg(6,50),sg(7,1),sg(7,2),sg(7,3),sg(7,4),sg(7,5),sg(7,6),sg(7,7),sg(7,8),sg(7,9),sg(7,10),sg(7,11),sg(7,12),sg(7,13),sg(7,14),sg(7,15),sg(7,16),sg(7,17),sg(7,18),sg(7,19),sg(7,20),sg(7,21),sg(7,22),sg(7,23),sg(7,24),sg(7,25),sg(7,26),sg(7,27),sg(7,28),sg(7,29),sg(7,30),sg(7,31),sg(7,32),sg(7,33),sg(7,34),sg(7,35),sg(7,36),sg(7,37),sg(7,38),sg(7,39),sg(7,40),sg(7,41),sg(7,42),sg(7,43),sg(7,44),sg(7,45),sg(7,46),sg(7,47),sg(7,48),sg(7,49),sg(7,50),sg(8,1),sg(8,2),sg(8,3),sg(8,4),sg(8,5),sg(8,6),sg(8,7),sg(8,8),sg(8,9),sg(8,10),sg(8,11),sg(8,12),sg(8,13),sg(8,14),sg(8,15),sg(8,16),sg(8,17),sg(8,18),sg(8,19),sg(8,20),sg(8,21),sg(8,22),sg(8,23),sg(8,24),sg(8,25),sg(8,26),sg(8,27),sg(8,28),sg(8,29),sg(8,30),sg(8,31),sg(8,32),sg(8,33),sg(8,34),sg(8,35),sg(8,36),sg(8,37),sg(8,38),sg(8,39),sg(8,40),sg(8,41),sg(8,42),sg(8,43),sg(8,44),sg(8,45),sg(8,46),sg(8,47),sg(8,48),sg(8,49),sg(8,50),sg(9,1),sg(9,2),sg(9,3),sg(9,4),sg(9,5),sg(9,6),sg(9,7),sg(9,8),sg(9,9),sg(9,10),sg(9,11),sg(9,12),sg(9,13),sg(9,14),sg(9,15),sg(9,16),sg(9,17),sg(9,18),sg(9,19),sg(9,20),sg(9,21),sg(9,22),sg(9,23),sg(9,24),sg(9,25),sg(9,26),sg(9,27),sg(9,28),sg(9,29),sg(9,30),sg(9,31),sg(9,32),sg(9,33),sg(9,34),sg(9,35),sg(9,36),sg(9,37),sg(9,38),sg(9,39),sg(9,40),sg(9,41),sg(9,42),sg(9,43),sg(9,44),sg(9,45),sg(9,46),sg(9,47),sg(9,48),sg(9,49),sg(9,50),sg(10,1),sg(10,2),sg(10,3),sg(10,4),sg(10,5),sg(10,6),sg(10,7),sg(10,8),sg(10,9),sg(10,10),sg(10,11),sg(10,12),sg(10,13),sg(10,14),sg(10,15),sg(10,16),sg(10,17),sg(10,18),sg(10,19),sg(10,20),sg(10,21),sg(10,22),sg(10,23),sg(10,24),sg(10,25),sg(10,26),sg(10,27),sg(10,28),sg(10,29),sg(10,30),sg(10,31),sg(10,32),sg(10,33),sg(10,34),sg(10,35),sg(10,36),sg(10,37),sg(10,38),sg(10,39),sg(10,40),sg(10,41),sg(10,42),sg(10,43),sg(10,44),sg(10,45),sg(10,46),sg(10,47),sg(10,48),sg(10,49),sg(10,50),sg(11,1),sg(11,2),sg(11,3),sg(11,4),sg(11,5),sg(11,6),sg(11,7),sg(11,8),sg(11,9),sg(11,10),sg(11,11),sg(11,12),sg(11,13),sg(11,14),sg(11,15),sg(11,16),sg(11,17),sg(11,18),sg(11,19),sg(11,20),sg(11,21),sg(11,22),sg(11,23),sg(11,24),sg(11,25),sg(11,26),sg(11,27),sg(11,28),sg(11,29),sg(11,30),sg(11,31),sg(11,32),sg(11,33),sg(11,34),sg(11,35),sg(11,36),sg(11,37),sg(11,38),sg(11,39),sg(11,40),sg(11,41),sg(11,42),sg(11,43),sg(11,44),sg(11,45),sg(11,46),sg(11,47),sg(11,48),sg(11,49),sg(11,50),sg(12,1),sg(12,2),sg(12,3),sg(12,4),sg(12,5),sg(12,6),sg(12,7),sg(12,8),sg(12,9),sg(12,10),sg(12,11),sg(12,12),sg(12,13),sg(12,14),sg(12,15),sg(12,16),sg(12,17),sg(12,18),sg(12,19),sg(12,20),sg(12,21),sg(12,22),sg(12,23),sg(12,24),sg(12,25),sg(12,26),sg(12,27),sg(12,28),sg(12,29),sg(12,30),sg(12,31),sg(12,32),sg(12,33),sg(12,34),sg(12,35),sg(12,36),sg(12,37),sg(12,38),sg(12,39),sg(12,40),sg(12,41),sg(12,42),sg(12,43),sg(12,44),sg(12,45),sg(12,46),sg(12,47),sg(12,48),sg(12,49),sg(12,50),sg(13,1),sg(13,2),sg(13,3),sg(13,4),sg(13,5),sg(13,6),sg(13,7),sg(13,8),sg(13,9),sg(13,10),sg(13,11),sg(13,12),sg(13,13),sg(13,14),sg(13,15),sg(13,16),sg(13,17),sg(13,18),sg(13,19),sg(13,20),sg(13,21),sg(13,22),sg(13,23),sg(13,24),sg(13,25),sg(13,26),sg(13,27),sg(13,28),sg(13,29),sg(13,30),sg(13,31),sg(13,32),sg(13,33),sg(13,34),sg(13,35),sg(13,36),sg(13,37),sg(13,38),sg(13,39),sg(13,40),sg(13,41),sg(13,42),sg(13,43),sg(13,44),sg(13,45),sg(13,46),sg(13,47),sg(13,48),sg(13,49),sg(13,50),sg(14,1),sg(14,2),sg(14,3),sg(14,4),sg(14,5),sg(14,6),sg(14,7),sg(14,8),sg(14,9),sg(14,10),sg(14,11),sg(14,12),sg(14,13),sg(14,14),sg(14,15),sg(14,16),sg(14,17),sg(14,18),sg(14,19),sg(14,20),sg(14,21),sg(14,22),sg(14,23),sg(14,24),sg(14,25),sg(14,26),sg(14,27),sg(14,28),sg(14,29),sg(14,30),sg(14,31),sg(14,32),sg(14,33),sg(14,34),sg(14,35),sg(14,36),sg(14,37),sg(14,38),sg(14,39),sg(14,40),sg(14,41),sg(14,42),sg(14,43),sg(14,44),sg(14,45),sg(14,46),sg(14,47),sg(14,48),sg(14,49),sg(14,50),sg(15,1),sg(15,2),sg(15,3),sg(15,4),sg(15,5),sg(15,6),sg(15,7),sg(15,8),sg(15,9),sg(15,10),sg(15,11),sg(15,12),sg(15,13),sg(15,14),sg(15,15),sg(15,16),sg(15,17),sg(15,18),sg(15,19),sg(15,20),sg(15,21),sg(15,22),sg(15,23),sg(15,24),sg(15,25),sg(15,26),sg(15,27),sg(15,28),sg(15,29),sg(15,30),sg(15,31),sg(15,32),sg(15,33),sg(15,34),sg(15,35),sg(15,36),sg(15,37),sg(15,38),sg(15,39),sg(15,40),sg(15,41),sg(15,42),sg(15,43),sg(15,44),sg(15,45),sg(15,46),sg(15,47),sg(15,48),sg(15,49),sg(15,50),sg(16,1),sg(16,2),sg(16,3),sg(16,4),sg(16,5),sg(16,6),sg(16,7),sg(16,8),sg(16,9),sg(16,10),sg(16,11),sg(16,12),sg(16,13),sg(16,14),sg(16,15),sg(16,16),sg(16,17),sg(16,18),sg(16,19),sg(16,20),sg(16,21),sg(16,22),sg(16,23),sg(16,24),sg(16,25),sg(16,26),sg(16,27),sg(16,28),sg(16,29),sg(16,30),sg(16,31),sg(16,32),sg(16,33),sg(16,34),sg(16,35),sg(16,36),sg(16,37),sg(16,38),sg(16,39),sg(16,40),sg(16,41),sg(16,42),sg(16,43),sg(16,44),sg(16,45),sg(16,46),sg(16,47),sg(16,48),sg(16,49),sg(16,50),sg(17,1),sg(17,2),sg(17,3),sg(17,4),sg(17,5),sg(17,6),sg(17,7),sg(17,8),sg(17,9),sg(17,10),sg(17,11),sg(17,12),sg(17,13),sg(17,14),sg(17,15),sg(17,16),sg(17,17),sg(17,18),sg(17,19),sg(17,20),sg(17,21),sg(17,22),sg(17,23),sg(17,24),sg(17,25),sg(17,26),sg(17,27),sg(17,28),sg(17,29),sg(17,30),sg(17,31),sg(17,32),sg(17,33),sg(17,34),sg(17,35),sg(17,36),sg(17,37),sg(17,38),sg(17,39),sg(17,40),sg(17,41),sg(17,42),sg(17,43),sg(17,44),sg(17,45),sg(17,46),sg(17,47),sg(17,48),sg(17,49),sg(17,50),sg(18,1),sg(18,2),sg(18,3),sg(18,4),sg(18,5),sg(18,6),sg(18,7),sg(18,8),sg(18,9),sg(18,10),sg(18,11),sg(18,12),sg(18,13),sg(18,14),sg(18,15),sg(18,16),sg(18,17),sg(18,18),sg(18,19),sg(18,20),sg(18,21),sg(18,22),sg(18,23),sg(18,24),sg(18,25),sg(18,26),sg(18,27),sg(18,28),sg(18,29),sg(18,30),sg(18,31),sg(18,32),sg(18,33),sg(18,34),sg(18,35),sg(18,36),sg(18,37),sg(18,38),sg(18,39),sg(18,40),sg(18,41),sg(18,42),sg(18,43),sg(18,44),sg(18,45),sg(18,46),sg(18,47),sg(18,48),sg(18,49),sg(18,50),sg(19,1),sg(19,2),sg(19,3),sg(19,4),sg(19,5),sg(19,6),sg(19,7),sg(19,8),sg(19,9),sg(19,10),sg(19,11),sg(19,12),sg(19,13),sg(19,14),sg(19,15),sg(19,16),sg(19,17),sg(19,18),sg(19,19),sg(19,20),sg(19,21),sg(19,22),sg(19,23),sg(19,24),sg(19,25),sg(19,26),sg(19,27),sg(19,28),sg(19,29),sg(19,30),sg(19,31),sg(19,32),sg(19,33),sg(19,34),sg(19,35),sg(19,36),sg(19,37),sg(19,38),sg(19,39),sg(19,40),sg(19,41),sg(19,42),sg(19,43),sg(19,44),sg(19,45),sg(19,46),sg(19,47),sg(19,48),sg(19,49),sg(19,50),sg(20,1),sg(20,2),sg(20,3),sg(20,4),sg(20,5),sg(20,6),sg(20,7),sg(20,8),sg(20,9),sg(20,10),sg(20,11),sg(20,12),sg(20,13),sg(20,14),sg(20,15),sg(20,16),sg(20,17),sg(20,18),sg(20,19),sg(20,20),sg(20,21),sg(20,22),sg(20,23),sg(20,24),sg(20,25),sg(20,26),sg(20,27),sg(20,28),sg(20,29),sg(20,30),sg(20,31),sg(20,32),sg(20,33),sg(20,34),sg(20,35),sg(20,36),sg(20,37),sg(20,38),sg(20,39),sg(20,40),sg(20,41),sg(20,42),sg(20,43),sg(20,44),sg(20,45),sg(20,46),sg(20,47),sg(20,48),sg(20,49),sg(20,50),sg(21,1),sg(21,2),sg(21,3),sg(21,4),sg(21,5),sg(21,6),sg(21,7),sg(21,8),sg(21,9),sg(21,10),sg(21,11),sg(21,12),sg(21,13),sg(21,14),sg(21,15),sg(21,16),sg(21,17),sg(21,18),sg(21,19),sg(21,20),sg(21,21),sg(21,22),sg(21,23),sg(21,24),sg(21,25),sg(21,26),sg(21,27),sg(21,28),sg(21,29),sg(21,30),sg(21,31),sg(21,32),sg(21,33),sg(21,34),sg(21,35),sg(21,36),sg(21,37),sg(21,38),sg(21,39),sg(21,40),sg(21,41),sg(21,42),sg(21,43),sg(21,44),sg(21,45),sg(21,46),sg(21,47),sg(21,48),sg(21,49),sg(21,50),sg(22,1),sg(22,2),sg(22,3),sg(22,4),sg(22,5),sg(22,6),sg(22,7),sg(22,8),sg(22,9),sg(22,10),sg(22,11),sg(22,12),sg(22,13),sg(22,14),sg(22,15),sg(22,16),sg(22,17),sg(22,18),sg(22,19),sg(22,20),sg(22,21),sg(22,22),sg(22,23),sg(22,24),sg(22,25),sg(22,26),sg(22,27),sg(22,28),sg(22,29),sg(22,30),sg(22,31),sg(22,32),sg(22,33),sg(22,34),sg(22,35),sg(22,36),sg(22,37),sg(22,38),sg(22,39),sg(22,40),sg(22,41),sg(22,42),sg(22,43),sg(22,44),sg(22,45),sg(22,46),sg(22,47),sg(22,48),sg(22,49),sg(22,50),sg(23,1),sg(23,2),sg(23,3),sg(23,4),sg(23,5),sg(23,6),sg(23,7),sg(23,8),sg(23,9),sg(23,10),sg(23,11),sg(23,12),sg(23,13),sg(23,14),sg(23,15),sg(23,16),sg(23,17),sg(23,18),sg(23,19),sg(23,20),sg(23,21),sg(23,22),sg(23,23),sg(23,24),sg(23,25),sg(23,26),sg(23,27),sg(23,28),sg(23,29),sg(23,30),sg(23,31),sg(23,32),sg(23,33),sg(23,34),sg(23,35),sg(23,36),sg(23,37),sg(23,38),sg(23,39),sg(23,40),sg(23,41),sg(23,42),sg(23,43),sg(23,44),sg(23,45),sg(23,46),sg(23,47),sg(23,48),sg(23,49),sg(23,50),sg(24,1),sg(24,2),sg(24,3),sg(24,4),sg(24,5),sg(24,6),sg(24,7),sg(24,8),sg(24,9),sg(24,10),sg(24,11),sg(24,12),sg(24,13),sg(24,14),sg(24,15),sg(24,16),sg(24,17),sg(24,18),sg(24,19),sg(24,20),sg(24,21),sg(24,22),sg(24,23),sg(24,24),sg(24,25),sg(24,26),sg(24,27),sg(24,28),sg(24,29),sg(24,30),sg(24,31),sg(24,32),sg(24,33),sg(24,34),sg(24,35),sg(24,36),sg(24,37),sg(24,38),sg(24,39),sg(24,40),sg(24,41),sg(24,42),sg(24,43),sg(24,44),sg(24,45),sg(24,46),sg(24,47),sg(24,48),sg(24,49),sg(24,50),sg(25,1),sg(25,2),sg(25,3),sg(25,4),sg(25,5),sg(25,6),sg(25,7),sg(25,8),sg(25,9),sg(25,10),sg(25,11),sg(25,12),sg(25,13),sg(25,14),sg(25,15),sg(25,16),sg(25,17),sg(25,18),sg(25,19),sg(25,20),sg(25,21),sg(25,22),sg(25,23),sg(25,24),sg(25,25),sg(25,26),sg(25,27),sg(25,28),sg(25,29),sg(25,30),sg(25,31),sg(25,32),sg(25,33),sg(25,34),sg(25,35),sg(25,36),sg(25,37),sg(25,38),sg(25,39),sg(25,40),sg(25,41),sg(25,42),sg(25,43),sg(25,44),sg(25,45),sg(25,46),sg(25,47),sg(25,48),sg(25,49),sg(25,50),sg(26,1),sg(26,2),sg(26,3),sg(26,4),sg(26,5),sg(26,6),sg(26,7),sg(26,8),sg(26,9),sg(26,10),sg(26,11),sg(26,12),sg(26,13),sg(26,14),sg(26,15),sg(26,16),sg(26,17),sg(26,18),sg(26,19),sg(26,20),sg(26,21),sg(26,22),sg(26,23),sg(26,24),sg(26,25),sg(26,26),sg(26,27),sg(26,28),sg(26,29),sg(26,30),sg(26,31),sg(26,32),sg(26,33),sg(26,34),sg(26,35),sg(26,36),sg(26,37),sg(26,38),sg(26,39),sg(26,40),sg(26,41),sg(26,42),sg(26,43),sg(26,44),sg(26,45),sg(26,46),sg(26,47),sg(26,48),sg(26,49),sg(26,50),sg(27,1),sg(27,2),sg(27,3),sg(27,4),sg(27,5),sg(27,6),sg(27,7),sg(27,8),sg(27,9),sg(27,10),sg(27,11),sg(27,12),sg(27,13),sg(27,14),sg(27,15),sg(27,16),sg(27,17),sg(27,18),sg(27,19),sg(27,20),sg(27,21),sg(27,22),sg(27,23),sg(27,24),sg(27,25),sg(27,26),sg(27,27),sg(27,28),sg(27,29),sg(27,30),sg(27,31),sg(27,32),sg(27,33),sg(27,34),sg(27,35),sg(27,36),sg(27,37),sg(27,38),sg(27,39),sg(27,40),sg(27,41),sg(27,42),sg(27,43),sg(27,44),sg(27,45),sg(27,46),sg(27,47),sg(27,48),sg(27,49),sg(27,50),sg(28,1),sg(28,2),sg(28,3),sg(28,4),sg(28,5),sg(28,6),sg(28,7),sg(28,8),sg(28,9),sg(28,10),sg(28,11),sg(28,12),sg(28,13),sg(28,14),sg(28,15),sg(28,16),sg(28,17),sg(28,18),sg(28,19),sg(28,20),sg(28,21),sg(28,22),sg(28,23),sg(28,24),sg(28,25),sg(28,26),sg(28,27),sg(28,28),sg(28,29),sg(28,30),sg(28,31),sg(28,32),sg(28,33),sg(28,34),sg(28,35),sg(28,36),sg(28,37),sg(28,38),sg(28,39),sg(28,40),sg(28,41),sg(28,42),sg(28,43),sg(28,44),sg(28,45),sg(28,46),sg(28,47),sg(28,48),sg(28,49),sg(28,50),sg(29,1),sg(29,2),sg(29,3),sg(29,4),sg(29,5),sg(29,6),sg(29,7),sg(29,8),sg(29,9),sg(29,10),sg(29,11),sg(29,12),sg(29,13),sg(29,14),sg(29,15),sg(29,16),sg(29,17),sg(29,18),sg(29,19),sg(29,20),sg(29,21),sg(29,22),sg(29,23),sg(29,24),sg(29,25),sg(29,26),sg(29,27),sg(29,28),sg(29,29),sg(29,30),sg(29,31),sg(29,32),sg(29,33),sg(29,34),sg(29,35),sg(29,36),sg(29,37),sg(29,38),sg(29,39),sg(29,40),sg(29,41),sg(29,42),sg(29,43),sg(29,44),sg(29,45),sg(29,46),sg(29,47),sg(29,48),sg(29,49),sg(29,50),sg(30,1),sg(30,2),sg(30,3),sg(30,4),sg(30,5),sg(30,6),sg(30,7),sg(30,8),sg(30,9),sg(30,10),sg(30,11),sg(30,12),sg(30,13),sg(30,14),sg(30,15),sg(30,16),sg(30,17),sg(30,18),sg(30,19),sg(30,20),sg(30,21),sg(30,22),sg(30,23),sg(30,24),sg(30,25),sg(30,26),sg(30,27),sg(30,28),sg(30,29),sg(30,30),sg(30,31),sg(30,32),sg(30,33),sg(30,34),sg(30,35),sg(30,36),sg(30,37),sg(30,38),sg(30,39),sg(30,40),sg(30,41),sg(30,42),sg(30,43),sg(30,44),sg(30,45),sg(30,46),sg(30,47),sg(30,48),sg(30,49),sg(30,50),sg(31,1),sg(31,2),sg(31,3),sg(31,4),sg(31,5),sg(31,6),sg(31,7),sg(31,8),sg(31,9),sg(31,10),sg(31,11),sg(31,12),sg(31,13),sg(31,14),sg(31,15),sg(31,16),sg(31,17),sg(31,18),sg(31,19),sg(31,20),sg(31,21),sg(31,22),sg(31,23),sg(31,24),sg(31,25),sg(31,26),sg(31,27),sg(31,28),sg(31,29),sg(31,30),sg(31,31),sg(31,32),sg(31,33),sg(31,34),sg(31,35),sg(31,36),sg(31,37),sg(31,38),sg(31,39),sg(31,40),sg(31,41),sg(31,42),sg(31,43),sg(31,44),sg(31,45),sg(31,46),sg(31,47),sg(31,48),sg(31,49),sg(31,50),sg(32,1),sg(32,2),sg(32,3),sg(32,4),sg(32,5),sg(32,6),sg(32,7),sg(32,8),sg(32,9),sg(32,10),sg(32,11),sg(32,12),sg(32,13),sg(32,14),sg(32,15),sg(32,16),sg(32,17),sg(32,18),sg(32,19),sg(32,20),sg(32,21),sg(32,22),sg(32,23),sg(32,24),sg(32,25),sg(32,26),sg(32,27),sg(32,28),sg(32,29),sg(32,30),sg(32,31),sg(32,32),sg(32,33),sg(32,34),sg(32,35),sg(32,36),sg(32,37),sg(32,38),sg(32,39),sg(32,40),sg(32,41),sg(32,42),sg(32,43),sg(32,44),sg(32,45),sg(32,46),sg(32,47),sg(32,48),sg(32,49),sg(32,50),sg(33,1),sg(33,2),sg(33,3),sg(33,4),sg(33,5),sg(33,6),sg(33,7),sg(33,8),sg(33,9),sg(33,10),sg(33,11),sg(33,12),sg(33,13),sg(33,14),sg(33,15),sg(33,16),sg(33,17),sg(33,18),sg(33,19),sg(33,20),sg(33,21),sg(33,22),sg(33,23),sg(33,24),sg(33,25),sg(33,26),sg(33,27),sg(33,28),sg(33,29),sg(33,30),sg(33,31),sg(33,32),sg(33,33),sg(33,34),sg(33,35),sg(33,36),sg(33,37),sg(33,38),sg(33,39),sg(33,40),sg(33,41),sg(33,42),sg(33,43),sg(33,44),sg(33,45),sg(33,46),sg(33,47),sg(33,48),sg(33,49),sg(33,50),sg(34,1),sg(34,2),sg(34,3),sg(34,4),sg(34,5),sg(34,6),sg(34,7),sg(34,8),sg(34,9),sg(34,10),sg(34,11),sg(34,12),sg(34,13),sg(34,14),sg(34,15),sg(34,16),sg(34,17),sg(34,18),sg(34,19),sg(34,20),sg(34,21),sg(34,22),sg(34,23),sg(34,24),sg(34,25),sg(34,26),sg(34,27),sg(34,28),sg(34,29),sg(34,30),sg(34,31),sg(34,32),sg(34,33),sg(34,34),sg(34,35),sg(34,36),sg(34,37),sg(34,38),sg(34,39),sg(34,40),sg(34,41),sg(34,42),sg(34,43),sg(34,44),sg(34,45),sg(34,46),sg(34,47),sg(34,48),sg(34,49),sg(34,50),sg(35,1),sg(35,2),sg(35,3),sg(35,4),sg(35,5),sg(35,6),sg(35,7),sg(35,8),sg(35,9),sg(35,10),sg(35,11),sg(35,12),sg(35,13),sg(35,14),sg(35,15),sg(35,16),sg(35,17),sg(35,18),sg(35,19),sg(35,20),sg(35,21),sg(35,22),sg(35,23),sg(35,24),sg(35,25),sg(35,26),sg(35,27),sg(35,28),sg(35,29),sg(35,30),sg(35,31),sg(35,32),sg(35,33),sg(35,34),sg(35,35),sg(35,36),sg(35,37),sg(35,38),sg(35,39),sg(35,40),sg(35,41),sg(35,42),sg(35,43),sg(35,44),sg(35,45),sg(35,46),sg(35,47),sg(35,48),sg(35,49),sg(35,50),sg(36,1),sg(36,2),sg(36,3),sg(36,4),sg(36,5),sg(36,6),sg(36,7),sg(36,8),sg(36,9),sg(36,10),sg(36,11),sg(36,12),sg(36,13),sg(36,14),sg(36,15),sg(36,16),sg(36,17),sg(36,18),sg(36,19),sg(36,20),sg(36,21),sg(36,22),sg(36,23),sg(36,24),sg(36,25),sg(36,26),sg(36,27),sg(36,28),sg(36,29),sg(36,30),sg(36,31),sg(36,32),sg(36,33),sg(36,34),sg(36,35),sg(36,36),sg(36,37),sg(36,38),sg(36,39),sg(36,40),sg(36,41),sg(36,42),sg(36,43),sg(36,44),sg(36,45),sg(36,46),sg(36,47),sg(36,48),sg(36,49),sg(36,50),sg(37,1),sg(37,2),sg(37,3),sg(37,4),sg(37,5),sg(37,6),sg(37,7),sg(37,8),sg(37,9),sg(37,10),sg(37,11),sg(37,12),sg(37,13),sg(37,14),sg(37,15),sg(37,16),sg(37,17),sg(37,18),sg(37,19),sg(37,20),sg(37,21),sg(37,22),sg(37,23),sg(37,24),sg(37,25),sg(37,26),sg(37,27),sg(37,28),sg(37,29),sg(37,30),sg(37,31),sg(37,32),sg(37,33),sg(37,34),sg(37,35),sg(37,36),sg(37,37),sg(37,38),sg(37,39),sg(37,40),sg(37,41),sg(37,42),sg(37,43),sg(37,44),sg(37,45),sg(37,46),sg(37,47),sg(37,48),sg(37,49),sg(37,50),sg(38,1),sg(38,2),sg(38,3),sg(38,4),sg(38,5),sg(38,6),sg(38,7),sg(38,8),sg(38,9),sg(38,10),sg(38,11),sg(38,12),sg(38,13),sg(38,14),sg(38,15),sg(38,16),sg(38,17),sg(38,18),sg(38,19),sg(38,20),sg(38,21),sg(38,22),sg(38,23),sg(38,24),sg(38,25),sg(38,26),sg(38,27),sg(38,28),sg(38,29),sg(38,30),sg(38,31),sg(38,32),sg(38,33),sg(38,34),sg(38,35),sg(38,36),sg(38,37),sg(38,38),sg(38,39),sg(38,40),sg(38,41),sg(38,42),sg(38,43),sg(38,44),sg(38,45),sg(38,46),sg(38,47),sg(38,48),sg(38,49),sg(38,50),sg(39,1),sg(39,2),sg(39,3),sg(39,4),sg(39,5),sg(39,6),sg(39,7),sg(39,8),sg(39,9),sg(39,10),sg(39,11),sg(39,12),sg(39,13),sg(39,14),sg(39,15),sg(39,16),sg(39,17),sg(39,18),sg(39,19),sg(39,20),sg(39,21),sg(39,22),sg(39,23),sg(39,24),sg(39,25),sg(39,26),sg(39,27),sg(39,28),sg(39,29),sg(39,30),sg(39,31),sg(39,32),sg(39,33),sg(39,34),sg(39,35),sg(39,36),sg(39,37),sg(39,38),sg(39,39),sg(39,40),sg(39,41),sg(39,42),sg(39,43),sg(39,44),sg(39,45),sg(39,46),sg(39,47),sg(39,48),sg(39,49),sg(39,50),sg(40,1),sg(40,2),sg(40,3),sg(40,4),sg(40,5),sg(40,6),sg(40,7),sg(40,8),sg(40,9),sg(40,10),sg(40,11),sg(40,12),sg(40,13),sg(40,14),sg(40,15),sg(40,16),sg(40,17),sg(40,18),sg(40,19),sg(40,20),sg(40,21),sg(40,22),sg(40,23),sg(40,24),sg(40,25),sg(40,26),sg(40,27),sg(40,28),sg(40,29),sg(40,30),sg(40,31),sg(40,32),sg(40,33),sg(40,34),sg(40,35),sg(40,36),sg(40,37),sg(40,38),sg(40,39),sg(40,40),sg(40,41),sg(40,42),sg(40,43),sg(40,44),sg(40,45),sg(40,46),sg(40,47),sg(40,48),sg(40,49),sg(40,50),sg(41,1),sg(41,2),sg(41,3),sg(41,4),sg(41,5),sg(41,6),sg(41,7),sg(41,8),sg(41,9),sg(41,10),sg(41,11),sg(41,12),sg(41,13),sg(41,14),sg(41,15),sg(41,16),sg(41,17),sg(41,18),sg(41,19),sg(41,20),sg(41,21),sg(41,22),sg(41,23),sg(41,24),sg(41,25),sg(41,26),sg(41,27),sg(41,28),sg(41,29),sg(41,30),sg(41,31),sg(41,32),sg(41,33),sg(41,34),sg(41,35),sg(41,36),sg(41,37),sg(41,38),sg(41,39),sg(41,40),sg(41,41),sg(41,42),sg(41,43),sg(41,44),sg(41,45),sg(41,46),sg(41,47),sg(41,48),sg(41,49),sg(41,50),sg(42,1),sg(42,2),sg(42,3),sg(42,4),sg(42,5),sg(42,6),sg(42,7),sg(42,8),sg(42,9),sg(42,10),sg(42,11),sg(42,12),sg(42,13),sg(42,14),sg(42,15),sg(42,16),sg(42,17),sg(42,18),sg(42,19),sg(42,20),sg(42,21),sg(42,22),sg(42,23),sg(42,24),sg(42,25),sg(42,26),sg(42,27),sg(42,28),sg(42,29),sg(42,30),sg(42,31),sg(42,32),sg(42,33),sg(42,34),sg(42,35),sg(42,36),sg(42,37),sg(42,38),sg(42,39),sg(42,40),sg(42,41),sg(42,42),sg(42,43),sg(42,44),sg(42,45),sg(42,46),sg(42,47),sg(42,48),sg(42,49),sg(42,50),sg(43,1),sg(43,2),sg(43,3),sg(43,4),sg(43,5),sg(43,6),sg(43,7),sg(43,8),sg(43,9),sg(43,10),sg(43,11),sg(43,12),sg(43,13),sg(43,14),sg(43,15),sg(43,16),sg(43,17),sg(43,18),sg(43,19),sg(43,20),sg(43,21),sg(43,22),sg(43,23),sg(43,24),sg(43,25),sg(43,26),sg(43,27),sg(43,28),sg(43,29),sg(43,30),sg(43,31),sg(43,32),sg(43,33),sg(43,34),sg(43,35),sg(43,36),sg(43,37),sg(43,38),sg(43,39),sg(43,40),sg(43,41),sg(43,42),sg(43,43),sg(43,44),sg(43,45),sg(43,46),sg(43,47),sg(43,48),sg(43,49),sg(43,50),sg(44,1),sg(44,2),sg(44,3),sg(44,4),sg(44,5),sg(44,6),sg(44,7),sg(44,8),sg(44,9),sg(44,10),sg(44,11),sg(44,12),sg(44,13),sg(44,14),sg(44,15),sg(44,16),sg(44,17),sg(44,18),sg(44,19),sg(44,20),sg(44,21),sg(44,22),sg(44,23),sg(44,24),sg(44,25),sg(44,26),sg(44,27),sg(44,28),sg(44,29),sg(44,30),sg(44,31),sg(44,32),sg(44,33),sg(44,34),sg(44,35),sg(44,36),sg(44,37),sg(44,38),sg(44,39),sg(44,40),sg(44,41),sg(44,42),sg(44,43),sg(44,44),sg(44,45),sg(44,46),sg(44,47),sg(44,48),sg(44,49),sg(44,50),sg(45,1),sg(45,2),sg(45,3),sg(45,4),sg(45,5),sg(45,6),sg(45,7),sg(45,8),sg(45,9),sg(45,10),sg(45,11),sg(45,12),sg(45,13),sg(45,14),sg(45,15),sg(45,16),sg(45,17),sg(45,18),sg(45,19),sg(45,20),sg(45,21),sg(45,22),sg(45,23),sg(45,24),sg(45,25),sg(45,26),sg(45,27),sg(45,28),sg(45,29),sg(45,30),sg(45,31),sg(45,32),sg(45,33),sg(45,34),sg(45,35),sg(45,36),sg(45,37),sg(45,38),sg(45,39),sg(45,40),sg(45,41),sg(45,42),sg(45,43),sg(45,44),sg(45,45),sg(45,46),sg(45,47),sg(45,48),sg(45,49),sg(45,50),sg(46,1),sg(46,2),sg(46,3),sg(46,4),sg(46,5),sg(46,6),sg(46,7),sg(46,8),sg(46,9),sg(46,10),sg(46,11),sg(46,12),sg(46,13),sg(46,14),sg(46,15),sg(46,16),sg(46,17),sg(46,18),sg(46,19),sg(46,20),sg(46,21),sg(46,22),sg(46,23),sg(46,24),sg(46,25),sg(46,26),sg(46,27),sg(46,28),sg(46,29),sg(46,30),sg(46,31),sg(46,32),sg(46,33),sg(46,34),sg(46,35),sg(46,36),sg(46,37),sg(46,38),sg(46,39),sg(46,40),sg(46,41),sg(46,42),sg(46,43),sg(46,44),sg(46,45),sg(46,46),sg(46,47),sg(46,48),sg(46,49),sg(46,50),sg(47,1),sg(47,2),sg(47,3),sg(47,4),sg(47,5),sg(47,6),sg(47,7),sg(47,8),sg(47,9),sg(47,10),sg(47,11),sg(47,12),sg(47,13),sg(47,14),sg(47,15),sg(47,16),sg(47,17),sg(47,18),sg(47,19),sg(47,20),sg(47,21),sg(47,22),sg(47,23),sg(47,24),sg(47,25),sg(47,26),sg(47,27),sg(47,28),sg(47,29),sg(47,30),sg(47,31),sg(47,32),sg(47,33),sg(47,34),sg(47,35),sg(47,36),sg(47,37),sg(47,38),sg(47,39),sg(47,40),sg(47,41),sg(47,42),sg(47,43),sg(47,44),sg(47,45),sg(47,46),sg(47,47),sg(47,48),sg(47,49),sg(47,50),sg(48,1),sg(48,2),sg(48,3),sg(48,4),sg(48,5),sg(48,6),sg(48,7),sg(48,8),sg(48,9),sg(48,10),sg(48,11),sg(48,12),sg(48,13),sg(48,14),sg(48,15),sg(48,16),sg(48,17),sg(48,18),sg(48,19),sg(48,20),sg(48,21),sg(48,22),sg(48,23),sg(48,24),sg(48,25),sg(48,26),sg(48,27),sg(48,28),sg(48,29),sg(48,30),sg(48,31),sg(48,32),sg(48,33),sg(48,34),sg(48,35),sg(48,36),sg(48,37),sg(48,38),sg(48,39),sg(48,40),sg(48,41),sg(48,42),sg(48,43),sg(48,44),sg(48,45),sg(48,46),sg(48,47),sg(48,48),sg(48,49),sg(48,50),sg(49,1),sg(49,2),sg(49,3),sg(49,4),sg(49,5),sg(49,6),sg(49,7),sg(49,8),sg(49,9),sg(49,10),sg(49,11),sg(49,12),sg(49,13),sg(49,14),sg(49,15),sg(49,16),sg(49,17),sg(49,18),sg(49,19),sg(49,20),sg(49,21),sg(49,22),sg(49,23),sg(49,24),sg(49,25),sg(49,26),sg(49,27),sg(49,28),sg(49,29),sg(49,30),sg(49,31),sg(49,32),sg(49,33),sg(49,34),sg(49,35),sg(49,36),sg(49,37),sg(49,38),sg(49,39),sg(49,40),sg(49,41),sg(49,42),sg(49,43),sg(49,44),sg(49,45),sg(49,46),sg(49,47),sg(49,48),sg(49,49),sg(49,50),sg(50,1),sg(50,2),sg(50,3),sg(50,4),sg(50,5),sg(50,6),sg(50,7),sg(50,8),sg(50,9),sg(50,10),sg(50,11),sg(50,12),sg(50,13),sg(50,14),sg(50,15),sg(50,16),sg(50,17),sg(50,18),sg(50,19),sg(50,20),sg(50,21),sg(50,22),sg(50,23),sg(50,24),sg(50,25),sg(50,26),sg(50,27),sg(50,28),sg(50,29),sg(50,30),sg(50,31),sg(50,32),sg(50,33),sg(50,34),sg(50,35),sg(50,36),sg(50,37),sg(50,38),sg(50,39),sg(50,40),sg(50,41),sg(50,42),sg(50,43),sg(50,44),sg(50,45),sg(50,46),sg(50,47),sg(50,48),sg(50,49),sg(50,50)]).