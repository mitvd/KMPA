%%%%%%%%%%%%%%%%%%%%
%% KNOWLEDGE BASE %%
%%%%%%%%%%%%%%%%%%%%

% Expert rules
coffee(espresso) :-
    strength(strong), milk(no).
 
 coffee(filter) :-
    strength(light), milk(no).
 
 coffee(cappuccino) :-
    strength(light), milk(foam).
 
 coffee(macchiato) :-
    strength(strong), milk(foam).
 
 coffee(latte) :-
    strength(light), milk(regular).
 
 % Map options to properties
 map(strength, "1", strong).
 map(strength, "2", light).
 map(strength, "0", _).
 
 map(milk, "1", no).
 map(milk, "2", regular).
 map(milk, "3", foam).
 map(milk, "0", _).
  
 map(question, "1", qstrenght).
 map(question, "2", qmilk).
 map(question, "0", _).

 % Declare dynamic predicates for user input
 :- dynamic strength/1.
 :- dynamic milk/1.
 :- dynamic question/1.
 
 % Empty the user input at startup
 clear :-
    retractall(milk(_)),
    asserta(milk(_)),
    retractall(strength(_)),
    asserta(strength(_)).
    retractall(question(_)),
    asserta(question(_)).
 :-clear.
 
 %%%%%%%%%%%%%%%%%%%%
 %% USER INTERFACE %%
 %%%%%%%%%%%%%%%%%%%%
 
 %% Note for Windows users: the predicate tty_clear (clear the screen) is not supported on Windows.
 %% Replace all occurrences of this predicate with write('\e[2J')
 %% The predicate occurs five times.
 
 menu :-
    write('\e[2J'),
    draw_coffee,
    repeat,      % backtrack to this position whenever something below fails.
    nl,
    print_preferences,
    format('~46t~72|~n'),
    writeln("How can I help you?"),
    writeln("1. Suggest me a coffee..."),
    writeln("2. Ask me about my preferences"),
    writeln("3. Changed my mind. Clear my preferences."),
    writeln("0. Exit"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    process_choice(Choice),
    Choice == "0". % if Choice is not 0: fail, backtrack to repeat.
 
 
 process_choice("0") :-   % user choice is 0: succeed.
    format("Thank you and see you next time!~n~n~n"), clear.
 
 % Run inference
 process_choice("1") :-
    write('\e[2J'),
    nl,
    writeln("Current suggestion:"),
    find_suggestions(Coffee),
    format("I personally recommend a nice ~w ", Coffee).
 
 % Gather information from the user
 process_choice("2") :-
    write('\e[2J'),
    writeln("Current suggestion:"),
    choose_question.

 % Gather information from the user
 process_choice("3") :-
    write('\e[2J'),
    format("~nThe process will be restarted.~n~n"),
    format("All previous preferences are deleted.~n"),
    clear,
    !.
 
 
 % Questions are layed out in fixed order
 choose_question :-
    var(Q),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("What information do you like to provide?"),
    writeln("1. Strength"),
    writeln("2. Milk"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(question, Choice, Q),
    retractall(question(_)),
    assertz(question(Q)),
    nonvar(Q),
    Q.

 % First ask about the strength and then about the milk
 qstrenght :-
    strength(S),
    var(S),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(strength, Choice, S),
    retractall(strength(_)),
    assertz(strength(S)).
 
 qmilk :-
    milk(M),
    var(M),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("Would you like any milk at all?"),
    writeln("1. None"),
    writeln("2. Regular"),
    writeln("3. Foam"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(milk, Choice, M),
    retractall(milk(_)),
    assertz(milk(M)).
 
 ask_question :-
    write('\e[2J'),
    nl,
    writeln("You already picked the strength and milk type."),
    writeln("I am ready to give you a suggestion.").
 
 
 %%%%%%%%%%%%%%%
 %% INFERENCE %%
 %%%%%%%%%%%%%%%
 
 % Gets all coffee alternatives and pick one at random
 find_suggestions(Coffee) :-
    bagof(C, coffee(C), Suggestions),
    random_member(Coffee, Suggestions), !.
 % If there is no option, write an apology.
 find_suggestions(_) :-
    writeln("Sorry, I am afraid I have no suggestions for you..."),
    clear,
    fail.
 
 
 % Prints the current user's preference to the screen
 %
 print_preferences :-
    strength(S),
    milk(M),
    format_preferences(S, M).
 
 % Formats the text according to the currently known preferences.
 %
 % Both options already selected
 format_preferences(S, M) :-
    nonvar(S), nonvar(M),
    upcase_atom(S, UpS),
    upcase_atom(M, UpM),
    format("Your current preferences are ~w coffee and with ~w milk. ~n~n",
              [UpS, UpM]), !.
 % Only strength selected.
 format_preferences(S, _) :-
  nonvar(S),
  upcase_atom(S, UpS),
  format("Your current preferences are ~w coffee. ~n~n", UpS), !.
 % Only milk selected.
 format_preferences(_, M) :-
    nonvar(M),
    upcase_atom(M, UpM),
    format("Your current preferences are coffee with ~w milk.. ~n~n", UpM), !.
 % Nothing selected yet. Do not print anything.
 format_preferences(_, _).
 
 
 
 draw_coffee :-
    writeln('          ,-"-.'),
    writeln('       _r-----i               _'),
    writeln('       \\       |-.         ,###.'),
    writeln('        |      | |      ,-------.'),
    writeln('        |      | |    c|         |                         ,--.'),
    writeln("        |      |'      |         |        _______________ C|  |"),
    writeln("        (=====)         =========         \\_____________/  `=='"),
    writeln("(HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH)").
 
 :- menu.
