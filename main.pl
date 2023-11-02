:- consult('utils.pl').
:- consult('menu.pl').
:- consult('board.pl').
:- consult('streamIO.pl').

%initial_state(+Size, -GameState)
initial_state(Size, [Board,Turns]):-
    Turns = 1,
    init_board(Size, Board), !.

/*
%display_game(Game)
display_game(Board):-. % TODO

%game_cycle(+GameState, +Player)
game_cycle([Board,Turns], Player):-
    game_over(Board, Winner), !,
    congratulate(Winner).

game_cycle([Board, Turns], Player):-
    choose_move(Board, Player, Move),
    move(Board, Move, NewBoard),
    NextPlayer is mod(Player,2)+1,
    display_game([NewBoard, Turns]), !,
    game_cycle([Board, Turns], NextPlayer).


%game_over(+GameState, -Winner)
game_over(Board, Winner):-. % TODO

%valid_moves(+GameState, +Player, -ListOfMoves)
valid_moves([Board,Turns], Player, ListOfMoves):-
    findall(Move, move(GameState, Move, NewState), Moves).

%choose_move(+Board, +Player, -Move)
%jogador escolhe jogada
choose_move(GameState, human, Move):-
% interaction to select move TODO


%choose_move(+Board, +Player, +ComputerLevel, -Move)
%computador escolhe jogada
choose_move(Board, Player, ComputerLevel, Move):-
    valid_moves(GameState, Moves),
    choose_move(Level, GameState, Moves, Move).

/** trocar o choose move aqui? Está nos slides mas não no enunciado aqui está choose_move(Level, GameState, Moves, Move)**//*
choose_move(Board, Player, 1, Move):-
    random_select(Move, Moves, _Rest).

choose_move(Board, Player, 2, Move):-
    setof(Value-Mv, NewState^( member(Mv, Moves),
    move(GameState, Mv, NewState),
    value(NewState, Player, Value) ), [_V-Move|_]).
% value assumes lower value is better

%move(+GameState, +Move, -NewGameState).
move([Board, Turns], Move, [NewBoard, NewTurns]):-. %TODO

%value(+GameState, +Player, -Value)
value([Board, Turns], Player, Value):-.
*/


play:-
    menu.