\version "2.16.1"
\language "italiano"

\header {
  title = "River flows in you"
  instrument = "Piano"
  composer = "Yiruma"
  opus = "First Love"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key la \major
  \time 4/4
  \tempo 4=65
}

right = \relative do'' {
  \global
  % l1
  la'8 sold la sold la mi la re,(
  \time 3/4 re2)( re8) la16 dod
  \time 4/4 la'8 sold la sold la mi la re,(
  \time 3/4 re2)( re8) la16 dod
  % l2
  \time 4/4 la'8 sold16 la( la) la, sold' la( la) la, sold' la( la) la, re la
  \appoggiatura {si8} dod re <la mi> dod <sold si>4. la16 sold
  la4( la16) mi la si dod4. dod16 re
  %l3
  mi4. re16 dod si2
  \appoggiatura {la8[ dod]} la'8 sold16 la( la) la, sold' la( la) la, sold' la( la) la, re la
  \appoggiatura { si8 } dod8 re mi dod' si mi, \appoggiatura { si'[ dod] } si la16 sold
  %l4
  <mi la>4. la,16 si dod8 mi, la dod16 re
  mi8 mi, dod' re16 dod si4 la'16 si la sold
  la16 la, mi' la, la' si la sold la la, mi' la, la' si la sold
  %l5
  la si dod re mi dod si la sold8 si, la'16 si la sold
  la16 la, mi' la, la' si la sold la la, mi' la, la' si la sold
  la si dod re mi dod si la sold8 si, la'16 si la sold
  
  %p2
  %l1
  la16 la, mi' la, la'16. si32 la16 sold la16 la, mi' la, la'16. si32 la16 sold
  la si dod re mi dod si la sold8 si, la'16. si32 la16 sold
  la16 la, mi' la, la'16. si32 la16 sold la16 la, mi' la, la'16. si32 la16 sold
  %l2
  \time 5/4 la si dod re mi dod si la sold8 si, sold8 mi4\fermata la16 dod
  \time 4/4 la'8 sold16 la( la) la, sold' la( la) la, sold' la( la) la, re la
  do8 re <la mi> do <sold si>4. la16 sold
  %l3
  <mi la>4( <mi la>16) mi la si dod mi, la si dod mi, dod' re
  mi mi, dod' re mi mi, re' dod si mi, re' dod si8 sold
  \appoggiatura { dod8 } la' sold16 la( la) la, sold' la( la) la, sold' la( la) la, re la
  
}

left = \relative do {
  \global
  %p1
  %l1
  fad8 dod' fad4 re,8 lad' mi'4(
  mi2.)
  fad,8 dod' fad4 re,8 lad' mi'4(
  mi2.)
  %l2
  fad,8 dod' fad4 re,8 la' mi' re,
  la mi' dod'4 sold8 si mi4
  fad,8 dod' fad4 re,8 la' mi'4
  %l3
  la,,8 mi' dod'4 mi,8 si' sold'4
  fad,8 dod' fad4 re,8 la' mi re,
  la' mi' dod' la, mi' si' mi4
  %l4
  fad,8 dod' fad4 re,8 la' mi'4
  la,,8 mi' dod'4 mi,8 si' mi4
  fad,8 dod' fad fad, re la' mi' re,
  %l5
  la mi' dod' la, mi' si' mi mi,
  fad dod' fad fad, re la' mi' re,
  la mi' dod' la, mi' si' mi mi,
  
  %p2
  %l1
  fad, dod' fad fad, re' la' mi' re,
  la mi' dod' la, mi si' mi mi,
  fad dod' fad fad, re' la' mi' re,
  %l2
  la mi' dod' la, mi si' sold'2\fermata
  fad8 dod' fad4 re,8 la' mi' re,
  la mi' dod' la, mi' si' mi4
  %l3
  fad8 dod4. re8 mi4 mi8
  la,,8 mi' dod' la, mi' si' mi4
  fad,8 dod' fad fad, re la' mi' re,
  %l4
  la mi' dod' la, mi' si' mi mi,
  fad dod' fad4 re,8 la' mi' re,
  la mi' dod' la, mi si' sold' mi,
  %l5
  fad dod' fad fad, re'8 la' mi' re,
  la mi' dod' la, mi si' sold' mi,
  
  %p3
  %l1
  fad dod' fad fad, re'8 la' mi' re,
  la mi' dod' la, mi si' sold' mi,
  %l2
  fad dod' fad fad, re'8 la' mi' re,
  la mi' dod' la, mi si' sold' mi,
  %l3
  fad dod' fad fad, re'8 la' mi' re,
  la mi' dod' la, mi si' sold'4
  <sold dod>2 fad8 re' fad fad,
  %l4
  mi dod' la'4 <mi sold>2
  fad,, dod re8 la mi4
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
