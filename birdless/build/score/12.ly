
    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=120
            \time 7/4                                                          %! scaling time signatures
            \mark \markup \bold { x5 }
            s1 * 7/4
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"120"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/4                                                          %! scaling time signatures
            s1 * 3/2
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 8/4                                                          %! scaling time signatures
            s1 * 2
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/4                                                          %! scaling time signatures
            s1 * 5/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/4                                                          %! scaling time signatures
            s1 * 7/4
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=45
            \time 7/8                                                          %! scaling time signatures
            s1 * 7/8
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"45"
              }
            }
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/8                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=30
            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"30"
              }
            }
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/8                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \once \override Score.TimeSignature.stencil = ##f                  %! applying ending skips
            \time 3/16                                                         %! scaling time signatures
            s1 * 3/16

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

                            \bar ".|:"
                            \set Staff.shortInstrumentName =                   %! applying staff names and clefs
                            \markup { \hcenter-in #12 " " }                    %! applying staff names and clefs
                            \set Staff.instrumentName =                        %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Alto Saxophone" }       %! applying staff names and clefs
                            \override Staff.Stem.stemlet-length = 0.75
                            a''8.
                            \p
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                            \<
                            [

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ~

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                            [

                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            ~

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }
                            [

                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                            ~

                            a''16

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            [

                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                            \revert Staff.Stem.stemlet-length
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            a''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                            [

                            \revert Staff.Stem.stemlet-length
                            a''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            [

                            a''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                            \revert Staff.Stem.stemlet-length
                            a''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 24/25 {
                                % [Voice 1 measure 2]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \override Staff.Stem.stemlet-length = 0.75
                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                [

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                \revert Staff.Stem.stemlet-length
                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                                ]

                            }

                            \times 16/17 {
                                % [Voice 1 measure 3]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \override Staff.Stem.stemlet-length = 0.75
                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                [

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \revert Staff.Stem.stemlet-length
                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 20/23 {
                                % [Voice 1 measure 4]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \override Staff.Stem.stemlet-length = 0.75
                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                [

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \revert Staff.Stem.stemlet-length
                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 14/15 {
                                % [Voice 1 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \override Staff.Stem.stemlet-length = 0.75
                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                [

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                a''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \revert Staff.Stem.stemlet-length
                                a''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                ]

                                a''4
                                \fff
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                            }
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <fs' g'' ctqs''' fs'''>2..
                            \ff
                            ^ \diagram-eight-markup
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <fs' g'' ctqs''' fs'''>2.
                            ^ \diagram-eight-markup
                            \bar ":|."
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <fs' g'' ctqs''' fs'''>4.
                            ^ \diagram-eight-markup
                            ~

                            <fs' g'' ctqs''' fs'''>4
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <fs' g'' ctqs''' fs'''>2.
                            ^ \diagram-eight-markup
                            \bar "||"
                            % [Voice 1 measure 10]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                            \once \override Rest.color = #white                %! applying ending skips
                            r1 * 3/32

                            \once \override MultiMeasureRest.color = #white    %! applying ending skips
                            R1 * 3/32
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" %! applying ending skips
                            ^ \markup { \raise #4 c.2'}
                            \stopStaff \startStaff                             %! applying ending skips

                        }

                    }

                }

            >>

        }

    >>
