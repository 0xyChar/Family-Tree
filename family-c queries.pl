?- [family_b].
?- [family_c].

% Grandparents
?- grandparent(X, dancan).      % Who are grandparents of dancan?
?- grandfather(X, george).      % Who is grandfather of george?
?- grandmother(X, emily).       % Who is grandmother of emily?

% Grandchildren
?- grandchild(X, raphael).      % Who are grandchildren of raphael?

% Uncles
?- uncle(X, dancan).            % Who are uncles of dancan?
?- uncle(masaku, X).            % Masaku is uncle to whom?

% Aunts
?- aunt(X, mwendwa).            % Who are aunts of mwendwa?
?- aunt(petronilla, X).         % Petronilla is aunt to whom?

% Cousins
?- cousin(george, X).           % Who are cousins of george?
?- cousin(dancan, X).           % Who are cousins of dancan?
