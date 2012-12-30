% Make a simple knowledge base. Represent some of your favorite books and authors.
author(card).
author(tolkien).

book(enders_game).
book(speaker_for_the_dead).
book(the_hobbit).

author_of(enders_game, card).
author_of(speaker_for_the_dead, card).
author_of(the_hobbit, tolkien).


% Find all books in your knowledge base written by one author.

% author_of(Book, card).
% author_of(Book, tolkien).


% Make a knowledge base representing musicians and instruments. 
% Also represent musicians and their genre of music.

band(cake).

musician(mccrea).
musician(difiore).
musician(mccurdy).
musician(nelson).
musician(baldi).

instrument(voice).
instrument(trumpet).
instument(guitar).
instrument(bass).
instrument(drum).

band_member(cake, mccrea).
band_member(cake, difiore).
band_member(cake, mccurdy).
band_member(cake, nelson).
band_member(cake, baldi).

plays_instrument(mccrae, voice).
plays_instrument(difiore, trumpet).
plays_instrument(mccurdy, guitar).
plays_instrument(nelson, bass).
plays_instrument(baldi, drums).

% Find all musicians who play the guitar.

% musician(Who),plays_instrument(Who,guitar).