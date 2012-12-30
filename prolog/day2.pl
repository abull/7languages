% reverse the elements of a list
myReverse([],[]).
myReverse([Head|Tail],Reverse) :- reverse(Tail, TailReverse), append(TailReverse,[Head],Reverse).


% myReverse([1,2,3],[3,2,1]).
% myReverse([1,2],[2,1]).

% find the smallest element of a list

smallest([Head|[]],Head).
smallest([Head|Tail],Head) :- smallest(Tail,TailSmallest), TailSmallest >= Head.
smallest([Head|Tail],TailSmallest) :- smallest(Tail, TailSmallest), TailSmallest =< Head.

% smallest([1,2,3], 1).
% smallest([6,4,3], 3).

% sort the elements of a list

mySort([],[]).
mySort([Head|[]],[Head|[]]).
mySort(Unsorted,Sorted) :- smallest(Unsorted,Smallest),
                           append(Part1,[Smallest], Part1S),
                           append(Part1S,Part2,Unsorted),
                           append(Part1,Part2,UnsortedRest),
                           mySort(UnsortedRest,SortedRest),
                           append([Smallest],SortedRest,Sorted).

% mySort([2,1,3], What).
% mySort([1,6,3,8,4,9,3,7,6,4,5,9,0,12], What).