\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=130
            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 5/6                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 5/6
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"130"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 4/6                                                          %! scaling time signatures
            s1 * 2/3
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 3/6                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 4/6                                                          %! scaling time signatures
            s1 * 2/3
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 5/6                                                          %! scaling time signatures
            s1 * 5/6
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/8                                                          %! scaling time signatures
            s1 * 3/4

        }

        \tag #'group1
        {

            \context StaffGroup = "Staff Group"
            <<

                \tag #'voice1
                {

                    \context Staff = "Staff 1"
                    {

                        \context Voice = "Voice 1"
                        {

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 1 measure 1]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \set Staff.shortInstrumentName =               %! applying staff names and clefs
                                \markup { \hcenter-in #12 " " }                %! applying staff names and clefs
                                \set Staff.instrumentName =                    %! applying staff names and clefs
                                \markup { \hcenter-in #14 "Alto Saxophone" }   %! applying staff names and clefs
                                r8
                                \!

                                f''8
                                \p
                                - \snappizzicato

                                r4

                                a''4
                                - \snappizzicato

                                r4

                                r8

                                fs''8
                                - \snappizzicato

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 1 measure 2]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2

                                d''8
                                - \snappizzicato

                                r8

                                \override Staff.Stem.stemlet-length = 0.75
                                d''8
                                - \snappizzicato
                                [

                                \revert Staff.Stem.stemlet-length
                                f''8
                                - \snappizzicato
                                ]

                            }

                            \times 2/3 {
                                % [Voice 1 measure 3]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \override Staff.Stem.stemlet-length = 0.75
                                fs''8
                                - \snappizzicato
                                [

                                \revert Staff.Stem.stemlet-length
                                a''8
                                - \snappizzicato
                                ]

                                r8

                                d''8
                                - \snappizzicato

                                r8

                                f''8
                                - \snappizzicato

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 1 measure 4]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \override Staff.Stem.stemlet-length = 0.75
                                a''8
                                - \snappizzicato
                                [

                                fs''8
                                - \snappizzicato

                                \revert Staff.Stem.stemlet-length
                                d''8
                                - \snappizzicato
                                ]

                                r8

                                r4

                                fs''4
                                - \snappizzicato

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                % [Voice 1 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r4

                                \override Staff.Stem.stemlet-length = 0.75
                                f''8
                                - \snappizzicato
                                [

                                \revert Staff.Stem.stemlet-length
                                a''8
                                - \snappizzicato
                                ]

                                r2

                                r8

                                d''8
                                - \snappizzicato

                            }
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <fs' g'' ctqs''' fs'''>2.
                            \ff
                            - \tweak X-offset -0.5
                            ^ \markup { \center-column{\raise #-1 c.6' \musicglyph #"scripts.ulongfermata"} }
                            ^ \diagram-eight-markup
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()