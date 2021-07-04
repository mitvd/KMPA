%%%%%%%%%%%%%%%%%%%%
%% KNOWLEDGE BASE %%
%%%%%%%%%%%%%%%%%%%%

% Expert rules
 insurance(a) :-
    coverage(a), insurance_type(a), insured_amounts(a), 
      ending_age(a), rate_type(a), contract_duration(a), waiting_time(a), 
      indexing_options(a), disability_tresholds(a), disability_criterion(a).
 
 insurance(b) :-
    coverage(a), insurance_type(a), insured_amounts(a), 
      ending_age(a), rate_type(b), contract_duration(b), waiting_time(b), 
      indexing_options(b), disability_tresholds(b), disability_criterion(b).
      
 insurance(c) :-
    coverage(a), insurance_type(a), insured_amounts(a), 
      ending_age(b), rate_type(b), contract_duration(b), waiting_time(b), 
      indexing_options(b), disability_tresholds(b), disability_criterion(a).
      
 insurance(d) :-
    coverage(b), insurance_type(a), insured_amounts(b), 
      ending_age(b), rate_type(b), contract_duration(a), waiting_time(b), 
      indexing_options(a), disability_tresholds(b), disability_criterion(b).
      
 insurance(e) :-
    coverage(a), insurance_type(b), insured_amounts(b), 
      ending_age(b), rate_type(a), contract_duration(a), waiting_time(b), 
      indexing_options(b), disability_tresholds(b), disability_criterion(a).
      
 insurance(f) :-
    coverage(b), insurance_type(b), insured_amounts(b), 
      ending_age(b), rate_type(a), contract_duration(a), waiting_time(a), 
      indexing_options(a), disability_tresholds(b), disability_criterion(b).
      
 insurance(g) :-
    coverage(a), insurance_type(a), insured_amounts(b), 
      ending_age(b), rate_type(a), contract_duration(a), waiting_time(b), 
      indexing_options(b), disability_tresholds(a), disability_criterion(a).
      
 insurance(h) :-
    coverage(b), insurance_type(b), insured_amounts(a), 
      ending_age(a), rate_type(a), contract_duration(a), waiting_time(b), 
      indexing_options(b), disability_tresholds(a), disability_criterion(b).
      
 insurance(i) :-
    coverage(b), insurance_type(b), insured_amounts(b), 
      ending_age(a), rate_type(a), contract_duration(b), waiting_time(b), 
      indexing_options(a), disability_tresholds(a), disability_criterion(a).

 insurance(j) :-
    coverage(b), insurance_type(b), insured_amounts(a), 
      ending_age(a), rate_type(b), contract_duration(b), waiting_time(a), 
      indexing_options(a), disability_tresholds(a), disability_criterion(b).
 
 % Map options to properties
 map(coverage, "1", a).
 map(coverage, "2", b).
 map(coverage, "0", _).
 
 map(insurance_type, "1", a).
 map(insurance_type, "2", b).
 map(insurance_type, "0", _).

 map(insured_amounts, "1", a).
 map(insured_amounts, "2", b).
 map(insured_amounts, "0", _).
 
 map(ending_age, "1", a).
 map(ending_age, "2", b).
 map(ending_age, "0", _).
 
 map(rate_type, "1", a).
 map(rate_type, "2", b).
 map(rate_type, "0", _).
 
 map(contract_duration, "1", a).
 map(contract_duration, "2", b).
 map(contract_duration, "0", _).
 
 map(waiting_time, "1", a).
 map(waiting_time, "2", b).
 map(waiting_time, "0", _).
 
 map(indexing_options, "1", a).
 map(indexing_options, "2", b).
 map(indexing_options, "0", _).
 
 map(disability_tresholds, "1", a).
 map(disability_tresholds, "2", b).
 map(disability_tresholds, "0", _).
 
 map(disability_criterion, "1", a).
 map(disability_criterion, "2", b).
 map(disability_criterion, "0", _).
 
  
 map(question, "1", q_coverage).
 map(question, "2", q_insurance_type).
 map(question, "3", q_insured_amounts).
 map(question, "4", q_ending_age).
 map(question, "5", q_rate_type).
 map(question, "6", q_contract_duration).
 map(question, "7", q_waiting_time).
 map(question, "8", q_indexing_options).
 map(question, "9", q_disability_tresholds).
 map(question, "10", q_disability_criterion).
 map(question, "0", _).

 % Declare dynamic predicates for user input
 :- dynamic coverage/1.
 :- dynamic insurance_type/1.
 :- dynamic insured_amounts/1.
 :- dynamic ending_age/1.
 :- dynamic rate_type/1.
 :- dynamic contract_duration/1.
 :- dynamic waiting_time/1.
 :- dynamic indexing_options/1.
 :- dynamic disability_tresholds/1.
 :- dynamic disability_criterion/1.
 :- dynamic question/1.
 :- dynamic temp_coverage/1.
 
 % Empty the user input at startup
 clear :-
    retractall(coverage(_)),
    asserta(coverage(_)),
    retractall(insurance_type(_)),
    asserta(insurance_type(_)),
    retractall(insured_amounts(_)),
    asserta(insured_amounts(_)),
    retractall(ending_age(_)),
    asserta(ending_age(_)),
    retractall(rate_type(_)),
    asserta(rate_type(_)),
    retractall(contract_duration(_)),
    asserta(contract_duration(_)),
    retractall(waiting_time(_)),
    asserta(waiting_time(_)),
    retractall(indexing_options(_)),
    asserta(indexing_options(_)),
    retractall(disability_tresholds(_)),
    asserta(disability_tresholds(_)),
    retractall(disability_criterion(_)),
    asserta(disability_criterion(_)),
    retractall(question(_)),
    asserta(question(_)),
    retractall(temp_coverage(_)),
    asserta(temp_coverage(_)).
 :-clear.
 
 %%%%%%%%%%%%%%%%%%%%
 %% USER INTERFACE %%
 %%%%%%%%%%%%%%%%%%%%
 
 %% Note for Windows users: the predicate tty_clear (clear the screen) is not supported on Windows.
 %% Replace all occurrences of this predicate with write('\e[2J')
 %% The predicate occurs five times.
 
 menu :-
    write('\e[2J'),
    draw_insurance,
    repeat,      % backtrack to this position whenever something below fails.
    nl,
    print_preferences,
    format('~46t~72|~n'),
    writeln("How can I help you?"),
    writeln("1. Suggest me an insurance..."),
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
    find_suggestions(Insurance),
    format("I personally recommend insurance ~w ", Insurance).
 
 % Gather information from the user
 process_choice("2") :-
    write('\e[2J'),
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
    writeln("1. Coverage"),
    writeln("2. Insurance type"),
    writeln("3. Insured amounts"),
    writeln("4. Ending age"),
    writeln("5. Rate type"),
    writeln("6. Contract duration"),
    writeln("7. Waiting time"),
    writeln("8. Indexing options"),
    writeln("9. Disability tresholds"),
    writeln("10. Disability criterion"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(question, Choice, Q),
    retractall(question(_)),
    assertz(question(Q)),
    nonvar(Q),
    Q.

 % First ask about the strength and then about the milk
 q_coverage :-
    coverage(C),
    var(C),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(coverage, Choice, C),
    retractall(coverage(_)),
    assertz(coverage(C)).
 
 q_insurance_type :-
    insurance_type(IT),
    var(IT),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(insurance_type, Choice, IT),
    retractall(insurance_type(_)),
    assertz(insurance_type(IT)).
 
 q_insured_amounts :-
    insured_amounts(IA),
    var(IA),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(insured_amounts, Choice, IA),
    retractall(insured_amounts(_)),
    assertz(insured_amounts(IA)).
 
 q_ending_age :-
    ending_age(EA),
    var(EA),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(ending_age, Choice, EA),
    retractall(ending_age(_)),
    assertz(ending_age(EA)).
 
 q_rate_type :-
    rate_type(RT),
    var(RT),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(rate_type, Choice, RT),
    retractall(rate_type(_)),
    assertz(rate_type(RT)).
 
 q_contract_duration :-
    contract_duration(CD),
    var(CD),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(contract_duration, Choice, CD),
    retractall(contract_duration(_)),
    assertz(contract_duration(CD)).
 
 q_waiting_time :-
    waiting_time(WT),
    var(WT),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(waiting_time, Choice, WT),
    retractall(waiting_time(_)),
    assertz(waiting_time(WT)).
 
 q_indexing_options :-
    indexing_options(IO),
    var(IO),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(indexing_options, Choice, IO),
    retractall(indexing_options(_)),
    assertz(indexing_options(IO)).
 
 q_disability_tresholds :-
    disability_tresholds(DT),
    var(DT),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(disability_tresholds, Choice, DT),
    retractall(disability_tresholds(_)),
    assertz(disability_tresholds(DT)).
 
 q_disability_criterion :-
    disability_criterion(DC),
    var(DC),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("How do you like your coffee?"),
    writeln("1. Strong"),
    writeln("2. Light"),
    writeln("0. Never mind"),
    format('~46t~72|~n'),
    read_line_to_string(user_input, Choice),
    map(disability_criterion, Choice, DC),
    retractall(disability_criterion(_)),
    assertz(disability_criterion(DC)).
 
 

 %%%%%%%%%%%%%%%
 %% INFERENCE %%
 %%%%%%%%%%%%%%%
 
 % Gets all insurance alternatives and pick one at random
 find_suggestions(Insurance) :-
    bagof(I, insurance(I), Suggestions),
    random_member(Insurance, Suggestions), !.
 % If there is no option, write an apology.
 find_suggestions(_) :-
    writeln("Sorry, I am afraid I have no suggestions for you..."),
    clear,
    fail.
 
 
 % Prints the current user's preference to the screen
 %
 print_preferences :-
    coverage(C),
    formC(C),
    temp_coverage(UpC),
    insurance_type(IT),
    insured_amounts(IA),
    ending_age(EA),
    rate_type(RT),
    contract_duration(CD),
    waiting_time(WT),
    indexing_options(IO),
    disability_tresholds(DT),
    disability_criterion(DC),

    format_preferences(UpC, IT, IA, EA, RT, CD, WT, IO, DT, DC).
 
 formC(C):-
    temp_coverage(UpC),
    nonvar(C), 
    retractall(temp_coverage(_)),
    assertz(temp_coverage(C)).

 formC(_):-
    temp_coverage(UpC),
    UpC = '-',
    retractall(temp_coverage(_)),
    assertz(temp_coverage(UpC)).

 % Formats the text according to the currently known preferences.
 %
 format_preferences(UpC, IT, IA, EA, RT, CD, WT, IO, DT, DC) :-
    nonvar(IT), nonvar(IA), nonvar(EA), nonvar(RT), nonvar(CD),
     nonvar(WT), nonvar(IO), nonvar(DT), nonvar(DC),
    upcase_atom(IT, UpIT),
    upcase_atom(IA, UpIA),
    upcase_atom(EA, UpEA),
    upcase_atom(RT, UpRT),
    upcase_atom(CD, UpCD),
    upcase_atom(WT, UpWT),
    upcase_atom(IO, UpIO),
    upcase_atom(DT, UpDT),
    upcase_atom(DC, UpDC),
    format("Your current preferences are: ~n
            Coverage: ~w ~n
            Insurance type: ~w ~n
            Insured amounts: ~w ~n
            Ending age: ~w ~n
            Rate type: ~w ~n
            Contract duration: ~w ~n
            Waiting time: ~w ~n
            Indexing options: ~w ~n
            Disability tresholds: ~w ~n
            Disability criterion: ~w ~n
            ~n",
              [UpC, UpIT, UpIA, UpEA, UpRT, UpCD, UpWT, UpIO, UpDT, UpDC]), !.

 format_preferences(UpC, _, _, _, _, _, _, _, _, _) :-
    format("Your current preferences are: ~n
            Coverage: ~w ~n
            ~n",
              [UpC]), !.

 format_preferences(_, _, _, _, _, _, _, _, _, _).
 
 draw_insurance :-
    writeln('          ,-"-.'),
    writeln('       _r-----i               _'),
    writeln('       \\       |-.         ,###.'),
    writeln('        |      | |      ,-------.'),
    writeln('        |      | |    c|         |                         ,--.'),
    writeln("        |      |'      |         |        _______________ C|  |"),
    writeln("        (=====)         =========         \\_____________/  `=='"),
    writeln("(HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH)").
 
 :- menu.
