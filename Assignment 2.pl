%%%%%%%%%%%%%%%%%%%%
%% KNOWLEDGE BASE %%
%%%%%%%%%%%%%%%%%%%%

% Expert rules
 insurance('Allied Insurance') :-
    coverage(accidental), insurance_type(sum), insured_amounts('65%'), 
      ending_age(60), rate_type(standard), contract_duration('1 year'), waiting_time('1 month'), 
      indexing_options('insured amounts'), disability_tresholds('25%'), disability_criterion('occupational disability').
 
 insurance('FlexiGlobal Insurance') :-
    coverage(partial), insurance_type(damage), insured_amounts('80%'), 
      ending_age(60), rate_type(standard), contract_duration('1 year'), waiting_time('1 month'), 
      indexing_options('insured amounts'), disability_tresholds('25%'), disability_criterion('suitable work').
      
 insurance('Republica Finance') :-
    coverage(complete), insurance_type(damage), insured_amounts('65%'), 
      ending_age(65), rate_type(combination), contract_duration('1 year'), waiting_time('3 months'), 
      indexing_options(payment), disability_tresholds('25%'), disability_criterion('usual work').
      
 insurance('Fund Guard') :-
    coverage(accidental), insurance_type(damage), insured_amounts('80%'), 
      ending_age(55), rate_type(standard), contract_duration('1 year'), waiting_time('6 months'), 
      indexing_options('insured amounts'), disability_tresholds('25%'), disability_criterion('occupational disability').
      
 insurance('Sun Global Insurance') :-
    coverage(partial), insurance_type(sum), insured_amounts('65%'), 
      ending_age(55), rate_type(standard), contract_duration('1 year'), waiting_time('1 month'), 
      indexing_options(payment), disability_tresholds('25%'), disability_criterion('usual work').
      
 insurance('Mutual Fund') :-
    coverage(complete), insurance_type(sum), insured_amounts('80%'), 
      ending_age(60), rate_type(combination), contract_duration('1 year'), waiting_time('6 months'), 
      indexing_options(payment), disability_tresholds('35%'), disability_criterion('suitable work').
      
 insurance('Insuritas') :-
    coverage(accidental), insurance_type(damage), insured_amounts('65%'), 
      ending_age(55), rate_type(combination), contract_duration('1 year'), waiting_time('1 month'), 
      indexing_options('insured amounts'), disability_tresholds('35%'), disability_criterion('occupational disability').
      
 insurance('Kapital Financial Services') :-
    coverage(partial), insurance_type(sum), insured_amounts('80%'), 
      ending_age(60), rate_type(combination), contract_duration('1 year'), waiting_time('3 months'), 
      indexing_options('insured amounts'), disability_tresholds('35%'), disability_criterion('occupational disability').
      
 insurance('Borderless Insurance') :-
    coverage(complete), insurance_type(damage), insured_amounts('65%'), 
      ending_age(65), rate_type(standard), contract_duration('1 year'), waiting_time('6 months'), 
      indexing_options(payment), disability_tresholds('25%'), disability_criterion('usual work').

 insurance('Security First') :-
    coverage(accidental), insurance_type(damage), insured_amounts('80%'), 
      ending_age(55), rate_type(standard), contract_duration('1 year'), waiting_time('1 month'), 
      indexing_options(payment), disability_tresholds('25%'), disability_criterion('usual work').

 insurance('LifeCrest') :-
    coverage(partial), insurance_type(sum), insured_amounts('65%'), 
      ending_age(60), rate_type(standard), contract_duration('1 year'), waiting_time('3 months'), 
      indexing_options('insured amounts'), disability_tresholds('25%'), disability_criterion('usual work').

 insurance('Banklio') :-
    coverage(complete), insurance_type(sum), insured_amounts('80%'), 
      ending_age(65), rate_type(combination), contract_duration('3 years'), waiting_time('3 months'), 
      indexing_options(payment), disability_tresholds('35%'), disability_criterion('suitable work').

 insurance('Fedora Finance Co.') :-
    coverage(accidental), insurance_type(damage), insured_amounts('65%'), 
      ending_age(60), rate_type(standard), contract_duration('3 years'), waiting_time('6 months'), 
      indexing_options(payment), disability_tresholds('25%'), disability_criterion('occupational disability').

 insurance('Securitas Fund') :-
    coverage(partial), insurance_type(sum), insured_amounts('80%'), 
      ending_age(60), rate_type(combination), contract_duration('3 years'), waiting_time('1 month'), 
      indexing_options('insured amounts'), disability_tresholds('35%'), disability_criterion('usual work').

 insurance('Budgeter Consulting') :-
    coverage(complete), insurance_type(sum), insured_amounts('65%'), 
      ending_age(55), rate_type(combination), contract_duration('3 years'), waiting_time('6 months'), 
      indexing_options('insured amounts'), disability_tresholds('35%'), disability_criterion('usual work').

 insurance('Capital Index') :-
    coverage(accidental), insurance_type(sum), insured_amounts('80%'), 
      ending_age(55), rate_type(standard), contract_duration('3 years'), waiting_time('1 month'), 
      indexing_options('insured amounts'), disability_tresholds('35%'), disability_criterion('suitable work').

 insurance('Horizon Insurance') :-
    coverage(partial), insurance_type(damage), insured_amounts('65%'), 
      ending_age(55), rate_type(combination), contract_duration('3 years'), waiting_time('6 months'), 
      indexing_options(payment), disability_tresholds('25%'), disability_criterion('occupational disability').

 insurance('Smartly Life Insurance') :-
    coverage(complete), insurance_type(damage), insured_amounts('80%'), 
      ending_age(60), rate_type(combination), contract_duration('3 years'), waiting_time('6 months'), 
      indexing_options(payment), disability_tresholds('35%'), disability_criterion('usual work').

 insurance('Paysurance') :-
    coverage(accidental), insurance_type(sum), insured_amounts('65%'), 
      ending_age(65), rate_type(standard), contract_duration('3 years'), waiting_time('3 months'), 
      indexing_options('insured amounts'), disability_tresholds('25%'), disability_criterion('occupational disability').

 insurance('Fundancial Finance Co.') :-
    coverage(partial), insurance_type(damage), insured_amounts('80%'), 
      ending_age(60), rate_type(standard), contract_duration('3 years'), waiting_time('1 month'), 
      indexing_options(payment), disability_tresholds('25%'), disability_criterion('usual work').

 insurance('Ivy Finance') :-
    coverage(complete), insurance_type(sum), insured_amounts('65%'), 
      ending_age(65), rate_type(combination), contract_duration('3 years'), waiting_time('3 months'), 
      indexing_options('insured amounts'), disability_tresholds('25%'), disability_criterion('usual work').
 
 % Map options to properties
 map(coverage, "1", accidental).
 map(coverage, "2", partial).
 map(coverage, "3", complete).
 map(coverage, "0", _).
 
 map(insurance_type, "1", sum).
 map(insurance_type, "2", damage).
 map(insurance_type, "0", _).

 map(insured_amounts, "1", '65%').
 map(insured_amounts, "2", '80%').
 map(insured_amounts, "0", _).
 
 map(ending_age, "1", 55).
 map(ending_age, "2", 60).
 map(ending_age, "3", 65).
 map(ending_age, "0", _).
 
 map(rate_type, "1", standard).
 map(rate_type, "2", combination).
 map(rate_type, "0", _).
 
 map(contract_duration, "1", '1 year').
 map(contract_duration, "2", '3 years').
 map(contract_duration, "0", _).
 
 map(waiting_time, "1", '1 month').
 map(waiting_time, "2", '3 months').
 map(waiting_time, "3", '6 months').
 map(waiting_time, "0", _).
 
 map(indexing_options, "1", payment).
 map(indexing_options, "2", 'insured amounts').
 map(indexing_options, "0", _).
 
 map(disability_tresholds, "1", '25%').
 map(disability_tresholds, "2", '35%').
 map(disability_tresholds, "0", _).
 
 map(disability_criterion, "1", 'usual work').
 map(disability_criterion, "2", 'suitable work').
 map(disability_criterion, "3", 'occupational disability').
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
 :- dynamic temp_insurance_type/1.
 :- dynamic temp_insured_amounts/1.
 :- dynamic temp_ending_age/1.
 :- dynamic temp_rate_type/1.
 :- dynamic temp_contract_duration/1.
 :- dynamic temp_waiting_time/1.
 :- dynamic temp_indexing_options/1.
 :- dynamic temp_disability_tresholds/1.
 :- dynamic temp_disability_criterion/1.
 
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
    asserta(temp_coverage(_)),
    retractall(temp_insurance_type(_)),
    asserta(temp_insurance_type(_)),
    retractall(temp_insured_amounts(_)),
    asserta(temp_insured_amounts(_)),
    retractall(temp_ending_age(_)),
    asserta(temp_ending_age(_)),
    retractall(temp_rate_type(_)),
    asserta(temp_rate_type(_)),
    retractall(temp_contract_duration(_)),
    asserta(temp_contract_duration(_)),
    retractall(temp_waiting_time(_)),
    asserta(temp_waiting_time(_)),
    retractall(temp_indexing_options(_)),
    asserta(temp_indexing_options(_)),
    retractall(temp_disability_tresholds(_)),
    asserta(temp_disability_tresholds(_)),
    retractall(temp_disability_criterion(_)),
    asserta(temp_disability_criterion(_)).
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
    format("Thank you and see you next time!~n~n~n").
 
 % Run inference
 process_choice("1") :-
    write('\e[2J'),
    nl,
    writeln("Current suggestion:"),
    find_suggestions(Insurance),
    format("I personally recommend the disability insurance from ~w. ~n ~n", Insurance).
 
 % Gather information from the user
 process_choice("2") :-
    write('\e[2J'),
    choose_question.

 % Gather information from the user
 process_choice("3") :-
    write('\e[2J'),
    format("~nThe process will be restarted.~n~n"),
    format("All previous preferences are deleted.~n"),
    clear, !.
 
 % Questions are layed out in fixed order
 choose_question :-
    var(Q),
    write('\e[2J'),
    nl,
    format('~46t~72|~n'),
    writeln("What information would you like to provide?"),
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
    writeln("0. Go back"),
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
    writeln("What would you like the coverage level of the insurance to be?"),
    writeln("1. Accidental"),
    writeln("2. Partial"),
    writeln("3. Complete"),
    writeln("0. Go back"),
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
    writeln("What type would you like the insurance to be?"),
    writeln("1. Sum"),
    writeln("2. Damage"),
    writeln("0. Go back"),
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
    writeln("What percent of your income would you like the insured amounts to be?"),
    writeln("1. 65%"),
    writeln("2. 80%"),
    writeln("0. Go back"),
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
    writeln("What would you like the ending age of the insurance to be?"),
    writeln("1. 55 years"),
    writeln("2. 60 years"),
    writeln("2. 65 years"),
    writeln("0. Go back"),
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
    writeln("What would you like the rate type of the insurance to be?"),
    writeln("1. Standard"),
    writeln("2. Combination"),
    writeln("0. Bo back"),
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
    writeln("What would you like the duration of the insurance contract to be?"),
    writeln("1. 1 year"),
    writeln("2. 3 years"),
    writeln("0. Go back"),
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
    writeln("How long would you like to wait before the coverage comes into effect?"),
    writeln("1. 1 month"),
    writeln("2. 3 months"),
    writeln("3. 6 months"),
    writeln("0. Go back"),
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
    writeln("What would you like the indexing options of the insurance to be?"),
    writeln("1. Payment"),
    writeln("2. Insured amounts"),
    writeln("0. Go back"),
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
    writeln("What would you like the disability treshold of the insurance to be?"),
    writeln("1. 25% disabled"),
    writeln("2. 35% disabled"),
    writeln("0. Go back"),
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
    writeln("What would you like the disability criterion of the insurance to be?"),
    writeln("1. Usual work"),
    writeln("2. Suitable work"),
    writeln("3. Occupational disability"),
    writeln("0. Go back"),
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
 
 
 % Prints the current users preference to the screen
 %
 print_preferences :-
    coverage(C),
    formC(C),
    temp_coverage(UpC),
    insurance_type(IT),
    formIT(IT),
    temp_insurance_type(UpIT),
    insured_amounts(IA),
    formIA(IA),
    temp_insured_amounts(UpIA),
    ending_age(EA),
    formEA(EA),
    temp_ending_age(UpEA),
    rate_type(RT),
    formRT(RT),
    temp_rate_type(UpRT),
    contract_duration(CD),
    formCD(CD),
    temp_contract_duration(UpCD),
    waiting_time(WT),
    formWT(WT),
    temp_waiting_time(UpWT),
    indexing_options(IO),
    formIO(IO),
    temp_indexing_options(UpIO),
    disability_tresholds(DT),
    formDT(DT),
    temp_disability_tresholds(UpDT),
    disability_criterion(DC),
    formDC(DC),
    temp_disability_criterion(UpDC),

    format_preferences(UpC, UpIT, UpIA, UpEA, UpRT, UpCD, UpWT, UpIO, UpDT, UpDC), !.
 
 formC(C):-
    temp_coverage(_),
    nonvar(C), 
    retractall(temp_coverage(_)),
    assertz(temp_coverage(C)).

 formC(_):-
    temp_coverage(UpC),
    UpC = '-',
    retractall(temp_coverage(_)),
    assertz(temp_coverage(UpC)).
 
 formIT(IT):-
    temp_insurance_type(_),
    nonvar(IT), 
    retractall(temp_insurance_type(_)),
    assertz(temp_insurance_type(IT)).

 formIT(_):-
    temp_insurance_type(UpIT),
    UpIT = '-',
    retractall(temp_insurance_type(_)),
    assertz(temp_insurance_type(UpIT)).
 
 formIA(IA):-
    temp_insured_amounts(_),
    nonvar(IA), 
    retractall(temp_insured_amounts(_)),
    assertz(temp_insured_amounts(IA)).

 formIA(_):-
    temp_insured_amounts(UpIA),
    UpIA = '-',
    retractall(temp_insured_amounts(_)),
    assertz(temp_insured_amounts(UpIA)).
 
 formEA(EA):-
    temp_ending_age(_),
    nonvar(EA), 
    retractall(temp_ending_age(_)),
    assertz(temp_ending_age(EA)).

 formEA(_):-
    temp_ending_age(UpEA),
    UpEA = '-',
    retractall(temp_ending_age(_)),
    assertz(temp_ending_age(UpEA)).
 
 formRT(RT):-
    temp_rate_type(_),
    nonvar(RT), 
    retractall(temp_rate_type(_)),
    assertz(temp_rate_type(RT)).

 formRT(_):-
    temp_rate_type(UpRT),
    UpRT = '-',
    retractall(temp_rate_type(_)),
    assertz(temp_rate_type(UpRT)).
 
 formCD(CD):-
    temp_contract_duration(_),
    nonvar(CD), 
    retractall(temp_contract_duration(_)),
    assertz(temp_contract_duration(CD)).

 formCD(_):-
    temp_contract_duration(UpCD),
    UpCD = '-',
    retractall(temp_contract_duration(_)),
    assertz(temp_contract_duration(UpCD)).
 
 formWT(WT):-
    temp_waiting_time(_),
    nonvar(WT), 
    retractall(temp_waiting_time(_)),
    assertz(temp_waiting_time(WT)).

 formWT(_):-
    temp_waiting_time(UpWT),
    UpWT = '-',
    retractall(temp_waiting_time(_)),
    assertz(temp_waiting_time(UpWT)).
 
 formIO(IO):-
    temp_indexing_options(_),
    nonvar(IO), 
    retractall(temp_indexing_options(_)),
    assertz(temp_indexing_options(IO)).

 formIO(_):-
    temp_indexing_options(UpIO),
    UpIO = '-',
    retractall(temp_indexing_options(_)),
    assertz(temp_indexing_options(UpIO)).
 
 formDT(DT):-
    temp_disability_tresholds(_),
    nonvar(DT), 
    retractall(temp_disability_tresholds(_)),
    assertz(temp_disability_tresholds(DT)).

 formDT(_):-
    temp_disability_tresholds(UpDT),
    UpDT = '-',
    retractall(temp_disability_tresholds(_)),
    assertz(temp_disability_tresholds(UpDT)).
 
 formDC(DC):-
    temp_disability_criterion(_),
    nonvar(DC), 
    retractall(temp_disability_criterion(_)),
    assertz(temp_disability_criterion(DC)).

 formDC(_):-
    temp_disability_criterion(UpDC),
    UpDC = '-',
    retractall(temp_disability_criterion(_)),
    assertz(temp_disability_criterion(UpDC)).

 % Formats the text according to the currently known preferences.
 %
 format_preferences(UpC, UpIT, UpIA, UpEA, UpRT, UpCD, UpWT, UpIO, UpDT, UpDC) :-
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
 
 draw_insurance :-
    writeln(' ________    __________    _________    ___     ___    ________       _______      __________     _______    ________ '),
    writeln('|__    __|  |   ____   |  |   ______|  |   |   |   |  |    __   \\    /       \\    |   ____   |   /  _____\\  |   _____|'),
    writeln('   |  |     |  |    |  |  |  |______   |   |   |   |  |   |__|  |   /   /_\\   \\   |  |    |  |  /   /       |  |____  '),
    writeln('   |  |     |  |    |  |  |______   |  |   |   |   |  |       __/  |    ___    |  |  |    |  |  |   |       |   ____| '),
    writeln(' __|  |__   |  |    |  |   ______|  |  |   \\___/   |  |   |\\   \\   |   |   |   |  |  |    |  |  \\   \\_____  |  |_____ '),
    writeln('|________|  |__|    |__|  |_________|  \\___________/  |___| \\___\\  |___|   |___|  |__|    |__|   \\_______/  |________|').
 
 :- menu.
