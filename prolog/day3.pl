valid([]). valid([Head|Tail]) :-
    fd_all_different(Head),
    valid(Tail).

sudoku(Puzzle, Solution) :- Solution = Puzzle,
        Puzzle = [S11, S12, S13, S14,
                  S21, S22, S23, S24,
                  S31, S32, S33, S34,
                  S41, S42, S43, S44],
        fd_domain(Solution, 1, 4),
            Row1 = [S11, S12, S13, S14],
            Row2 = [S21, S22, S23, S24],
            Row3 = [S31, S32, S33, S34],
            Row4 = [S41, S42, S43, S44],
            Col1 = [S11, S21, S31, S41],
            Col2 = [S12, S22, S32, S42],
            Col3 = [S13, S23, S33, S43],
            Col4 = [S14, S24, S34, S44],
            Square1 = [S11, S12, S21, S22],
            Square2 = [S13, S14, S23, S24],
            Square3 = [S31, S32, S41, S42],
            Square4 = [S33, S34, S43, S44],
            valid([Row1, Row2, Row3, Row4,
                   Col1, Col2, Col3, Col4,
                   Square1, Square2, Square3, Square4]).


sudoku(Puzzle, Solution) :- Solution = Puzzle,
        Puzzle = [S11, S12, S13, S14,
                  S21, S22, S23, S24,
                  S31, S32, S33, S34,
                  S41, S42, S43, S44,
                  S51, S52, S53 ,S54,
                  S61, S62, S63, S64],
        fd_domain(Solution, 1, 6),
            Row1 = [S11, S12, S13, S14],
            Row2 = [S21, S22, S23, S24],
            Row3 = [S31, S32, S33, S34],
            Row4 = [S41, S42, S43, S44],
            Row5 = [S51, S52, S53, S54],
            Row6 = [S61, S62, S63, S64],
            Col1 = [S11, S21, S31, S41, S51, S61],
            Col2 = [S12, S22, S32, S42, S52, S62],
            Col3 = [S13, S23, S33, S43, S53, S63],
            Col4 = [S14, S24, S34, S44, S54, S64],
            Square1 = [S11, S12, S21, S22, S31, S32],
            Square2 = [S13, S14, S23, S24, S33, S34],
            Square3 = [S41, S42, S51, S52, S61, S62],
            Square4 = [S43, S44, S53, S54, S63, S64],
            valid([Row1, Row2, Row3, Row4, Row5, Row6,
                   Col1, Col2, Col3, Col4,
                   Square1, Square2, Square3, Square4]).


sudoku(Puzzle, Solution) :- Solution = Puzzle,
        Puzzle = [S11, S12, S13, S14, S15, S16, S17, S18, S19,
                  S21, S22, S23, S24, S25, S26, S27, S28, S29,
                  S31, S32, S33, S34, S35, S36, S37, S38, S39,
                  S41, S42, S43, S44, S45, S46, S47, S48, S49,
                  S51, S52, S53, S54, S55, S56, S57, S58, S59,
                  S61, S62, S63, S64, S65, S66, S67, S68, S69,
                  S71, S72, S73, S74, S75, S76, S77, S78, S79,
                  S81, S82, S83, S84, S85, S86, S87, S88, S89,
                  S91, S92, S93, S94, S95, S96, S97, S98, S99],

        fd_domain(Solution, 1, 9),


            Row1 = [S11, S12, S13, S14, S15, S16, S17, S18, S19],
            Row2 = [S21, S22, S23, S24, S25, S26, S27, S28, S29],
            Row3 = [S31, S32, S33, S34, S35, S36, S37, S38, S39],
            Row4 = [S41, S42, S43, S44, S45, S46, S47, S48, S49],
            Row5 = [S51, S52, S53, S54, S55, S56, S57, S58, S59],
            Row6 = [S61, S62, S63, S64, S65, S66, S67, S68, S69],
            Row7 = [S71, S72, S73, S74, S75, S76, S77, S78, S79],
            Row8 = [S81, S82, S83, S84, S85, S86, S87, S88, S89],
            Row9 = [S91, S92, S93, S94, S95, S96, S97, S98, S99],
            Col1 = [S11, S21, S31, S41, S51, S61, S71, S81, S91],
            Col2 = [S12, S22, S32, S42, S52, S62, S72, S82, S92],
            Col3 = [S13, S23, S33, S43, S53, S63, S73, S83, S93],
            Col4 = [S14, S24, S34, S44, S54, S64, S74, S84, S94],
            Col5 = [S15, S25, S35, S45, S55, S65, S75, S85, S95],
            Col6 = [S16, S26, S36, S46, S56, S66, S76, S86, S96],
            Col7 = [S17, S27, S37, S47, S57, S67, S77, S87, S97],
            Col8 = [S18, S28, S38, S48, S58, S68, S78, S88, S98],
            Col9 = [S19, S29, S39, S49, S59, S69, S79, S89, S99],
            Square1 = [S11, S12, S13, S21, S22, S23, S31, S32, S33],
            Square2 = [S14, S15, S16, S24, S25, S26, S34, S35, S36],
            Square3 = [S17, S18, S19, S27, S28, S29, S37, S38, S39],
            Square4 = [S41, S42, S43, S51, S52, S53, S61, S62, S63],
            Square5 = [S44, S45, S46, S54, S55, S56, S64, S65, S66],
            Square6 = [S47, S48, S49, S57, S58, S59, S67, S68, S69],
            Square7 = [S71, S72, S73, S81, S82, S83, S91, S92, S93],
            Square8 = [S74, S75, S76, S84, S85, S86, S94, S95, S96],
            Square9 = [S77, S78, S79, S87, S88, S89, S97, S98, S99],
            valid([Row1, Row2, Row3, Row4, Row5, Row6, Row7, Row8, Row9,
                   Col1, Col2, Col3, Col4, Col5, Col6, Col7, Col8, Col9,
                   Square1, Square2, Square3, Square4, Square5, Square6, Square7, Square8, Square9]).

% sudoku([_, _, 2, 3,   _, _, _, _,  _, _, _, _,  3, 4, _, _], Solution).
% sudoku([_, _, 2, 3,   1, 6, _, _,  _, _, _, _,  3, 4, _, _,  _, _, _, _,  _, 1, 4, 6], Solution).
% sudoku([_,_,_, _,_,_, 9,8,_,  1,_,_, 4,_,3, 5,_,2,  _,9,_, 7,8,_, 3,_,4,  _,6,_, 3,_,_, _,_,5,  _,_,_, 8,_,9, _,_,_,  5,_,_, _,_,2, _,4,_,  6,_,4, _,3,1, _,5,_,  7,_,5, 9,_,8, _,_,6,  _,3,1, _,_,_, _,_,_], Solution).


pretty_sudoku(Puzzle) :- sudoku(Puzzle, Solution),
      Solution = [S11, S12, S13, S14, S15, S16, S17, S18, S19,
                  S21, S22, S23, S24, S25, S26, S27, S28, S29,
                  S31, S32, S33, S34, S35, S36, S37, S38, S39,
                  S41, S42, S43, S44, S45, S46, S47, S48, S49,
                  S51, S52, S53, S54, S55, S56, S57, S58, S59,
                  S61, S62, S63, S64, S65, S66, S67, S68, S69,
                  S71, S72, S73, S74, S75, S76, S77, S78, S79,
                  S81, S82, S83, S84, S85, S86, S87, S88, S89,
                  S91, S92, S93, S94, S95, S96, S97, S98, S99],
         format('+-------+-------+-------+~n',[]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S11, S12, S13, S14, S15, S16, S17, S18, S19]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S21, S22, S23, S24, S25, S26, S27, S28, S29]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S31, S32, S33, S34, S35, S36, S37, S38, S39]),
         format('+-------+-------+-------+~n',[]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S41, S42, S43, S44, S45, S46, S47, S48, S49]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S51, S52, S53 ,S54, S55, S56, S57, S58, S59]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S61, S62, S63, S64, S65, S66, S67, S68, S69]),
         format('+-------+-------+-------+~n',[]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S71, S72, S73, S74, S75, S76, S77, S78, S79]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S81, S82, S83, S84, S85, S86, S87, S88, S89]),
         format('│ ~d ~d ~d | ~d ~d ~d | ~d ~d ~d │~n', [S91, S92, S93, S94, S95, S96, S97, S98, S99]),
         format('+-------+-------+-------+~n',[]).

% pretty_sudoku([_,_,_, _,_,_, 9,8,_,  1,_,_, 4,_,3, 5,_,2,  _,9,_, 7,8,_, 3,_,4,  _,6,_, 3,_,_, _,_,5,  _,_,_, 8,_,9, _,_,_,  5,_,_, _,_,2, _,4,_,  6,_,4, _,3,1, _,5,_,  7,_,5, 9,_,8, _,_,6,  _,3,1, _,_,_, _,_,_]).







