% ============================================
% PART (b) - BASIC FAMILY TREE
% ============================================

% GENDER FACTS
male(raphael). male(masaku). male(mwendwa). male(dancan).
male(davis). male(george). male(eric). male(mbondo).
male(kamau). male(makau). male(anthony). male(musyoki). male(patrick).

female(petronilla). female(annah). female(ndanu). female(mueni).
female(agneta). female(emily). female(rose). female(mbatha).
female(patricia). female(minoo). female(kamanthe). female(ndilu).
female(katunge). female(purity).

% PARENT RELATIONSHIPS
parent(raphael, masaku).
parent(raphael, annah).
parent(petronilla, masaku).
parent(petronilla, annah).

parent(masaku, mwendwa).
parent(masaku, ndanu).
parent(annah, mwendwa).
parent(annah, ndanu).

parent(mwendwa, dancan).
parent(mwendwa, mueni).
parent(ndanu, dancan).
parent(ndanu, mueni).

parent(dancan, george).
parent(dancan, emily).
parent(mueni, george).
parent(mueni, emily).

% BASIC RULES
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
child(X, Y) :- parent(Y, X).
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- sibling(X, Y), male(X).
sister(X, Y) :- sibling(X, Y), female(X).
