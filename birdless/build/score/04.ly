
    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=84
            \time 6/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 3/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"84"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 8/4                                                          %! scaling time signatures
            s1 * 2
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/8                                                          %! scaling time signatures
            s1 * 7/8
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/8                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/8                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/8                                                          %! scaling time signatures
            s1 * 3/8

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
                            % [Voice 1 measure 1]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { \hcenter-in #12 " " }                    %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Alto Saxophone" }       %! applying staff names and clefs
                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8.
                            \pp
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'16
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8.
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                                ]

                            }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            a'8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 14/24 {
                                % [Voice 1 measure 2]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'2
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                            }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b'16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            ~

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b'8
                            ~
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b'32

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b'16.
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            ~
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            b'8

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 28/40 {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 14/24 {

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/8 {
                                % [Voice 1 measure 3]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'4.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \times 2/3 {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs'4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs'2
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                }

                                \times 2/3 {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs'8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs'8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs'8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs'8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                    ]

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs'4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                                [

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }
                                ]

                            }
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            as'4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            as'4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            as'4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            as'4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                ]

                            }

                            \times 2/3 {

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as'4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/9 {
                                % [Voice 1 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <d' ctqs'' as'' ds''' fs'''>4
                                \f
                                ^ \diagram-one-markup

                                <dqs' d'' atqs'' ds'''>4.
                                ^ \diagram-two-markup

                                <dqs' dqs'' fqs'' b'' dtqs'''>2
                                ^ \diagram-three-markup

                            }
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16
                            \p
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ~

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'32
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16.
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g'16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/12 {
                                % [Voice 1 measure 7]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c''4.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \times 4/5 {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    c''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    c''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    c''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    c''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    c''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c''2
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                            }
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <c'' eqf'' d''' gs'''>4.
                            \f
                            ^ \diagram-twelve-markup

                            <c'' eqf'' d''' gs'''>4
                            ^ \diagram-twelve-markup

                            <c'' eqf'' d''' gs'''>8
                            ^ \diagram-twelve-markup
                            ~

                            \scaleDurations #'(1 . 1) {
                                % [Voice 1 measure 9]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <c'' eqf'' d''' gs'''>2
                                ~

                                <c'' eqf'' d''' gs'''>8

                            }
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs'8
                            \ff
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs'8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs'8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs'8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            ]

                            \times 4/5 {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                ]

                            }

                            \times 2/3 {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs'8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                ]

                            }
                            % [Voice 1 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <af' bf'>4.
                            \p
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \diagram-nine-span-markup \hspace #0.5 }
                            - \tweak padding 6
                            - \tweak staff-padding 6
                            \startTextSpan
                            \glissando                                         %! abjad.glissando(7)

                            <bf' af''>8
                            ~
                            % [Voice 1 measure 12]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <bf' af''>4.
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
