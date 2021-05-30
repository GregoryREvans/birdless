%! abjad.LilyPondFile._get_format_pieces()
\version "2.19.84"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily"

%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! abjad.LilyPondFile._get_formatted_blocks()
{

    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 1]

            \tempo 4=120
            %! scaling time signatures
            \time 7/4
            \mark \markup \bold { x5 }
            s1 * 7/4
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"120"
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 8/4
            s1 * 2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 5/4
            s1 * 5/4
            ^ \rit-markup
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            \time 7/4
            s1 * 7/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            \tempo 4=45
            %! scaling time signatures
            \time 7/8
            s1 * 7/8
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"45"
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            \tempo 4=30
            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"30"
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 9]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 10]

            %! applying ending skips
            \once \override Score.TimeSignature.stencil = ##f
            %! scaling time signatures
            \time 3/16
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
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 1]

                            \bar ".|:"
                            %! applying staff names and clefs
                            \set Staff.shortInstrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #12 " " }
                            %! applying staff names and clefs
                            \set Staff.instrumentName =
                            %! applying staff names and clefs
                            \markup { \hcenter-in #14 "Alto Saxophone" }
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
                            \times 24/25
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 2]

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

                            \times 16/17
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 3]

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
                            \times 20/23
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 4]

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
                            \times 14/15
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 5]

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
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            <fs' g'' ctqs''' fs'''>2..
                            \ff
                            ^ \diagram-eight-markup
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            <fs' g'' ctqs''' fs'''>2.
                            ^ \diagram-eight-markup
                            \bar ":|."
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            <fs' g'' ctqs''' fs'''>4.
                            ^ \diagram-eight-markup
                            ~

                            <fs' g'' ctqs''' fs'''>4
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 9]

                            <fs' g'' ctqs''' fs'''>2.
                            ^ \diagram-eight-markup
                            \bar "||"
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 10]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.color = #white
                            r1 * 3/32

                            %! applying ending skips
                            \once \override MultiMeasureRest.color = #white
                            R1 * 3/32
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ushortfermata" 
                            ^ \markup { \raise #4 c.2'}
                            %! applying ending skips
                            \stopStaff \startStaff

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}