%! abjad.LilyPondFile._get_format_pieces()
\version "2.19.84"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/gregoryevans/Scores/birdless/birdless/build/score_stylesheet.ily"

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

            \tempo 4=90
            %! scaling time signatures
            \time 8/4
            \mark \markup \bold {  }
            s1 * 2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"90"
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 7/4
            s1 * 7/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 5/4
            s1 * 5/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            #(ly:expect-warning "strange time signature found")
            %! scaling time signatures
            \time 5/6
            s1 * 5/6
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 3/4
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! scaling time signatures
            \time 4/4
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 9]

            %! scaling time signatures
            \time 3/4
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 10]

            %! scaling time signatures
            #(ly:expect-warning "strange time signature found")
            %! scaling time signatures
            \time 4/6
            s1 * 2/3
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 11]

            %! scaling time signatures
            #(ly:expect-warning "strange time signature found")
            %! scaling time signatures
            \time 3/6
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 12]

            %! scaling time signatures
            \time 7/4
            s1 * 7/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 13]

            %! scaling time signatures
            \time 6/4
            s1 * 3/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 14]

            %! scaling time signatures
            \time 5/4
            s1 * 5/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 15]

            %! scaling time signatures
            #(ly:expect-warning "strange time signature found")
            %! scaling time signatures
            \time 4/6
            s1 * 2/3
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 16]

            %! scaling time signatures
            #(ly:expect-warning "strange time signature found")
            %! scaling time signatures
            \time 5/6
            s1 * 5/6

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

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 1]

                                %! applying staff names and clefs
                                \set Staff.shortInstrumentName =
                                %! applying staff names and clefs
                                \markup { \hcenter-in #12 " " }
                                %! applying staff names and clefs
                                \set Staff.instrumentName =
                                %! applying staff names and clefs
                                \markup { \hcenter-in #14 "Alto Saxophone" }
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''8
                                \mf
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                \<

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''4.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \times 4/5
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''2
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''4
                                \f
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 2]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''8..
                            \mf
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''32
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''8.
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''8
                            ~
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''32

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''16.
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ~
                            ]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            fs''8

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 28/40
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 14/24
                            {

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''4
                                \mp
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }
                                - \tweak stencil #constante-hairpin
                                \<

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 3]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''4
                                \!
                                \f
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                \>

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''2
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''2
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                                    ]

                                }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''4
                                    \mf
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                }

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/6
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 4]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''8
                                \mf
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                \<
                                [

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                ]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''4.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''4.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \times 2/3
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                }

                                \times 4/5
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    g''8
                                    \f
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ]

                                }

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 5]

                                r8
                                \!

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'''8
                                \mp
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<

                                r4
                                \!

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f'''4
                                \ff
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<

                                r4
                                \!

                                r8

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d'''8
                                \f
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 6]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                \mf
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                - \tweak stencil #abjad-flared-hairpin
                                \>

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c'''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c'''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                            ]

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                ]

                            }

                            \times 2/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                \mp
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 7]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''32
                            \f
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            \>
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''16.
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            ]

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                gs''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                ]

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            [

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ~

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''16

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-sharp-markup
                            gs''16
                            \mf
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            - \tweak stencil #constante-hairpin
                            \<
                            ]
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''8
                            \!
                            \mf
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            \<
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            d''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                            ]

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                ]

                            }

                            \times 2/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d''8
                                \f
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                ]

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 9]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                cs''8
                                \mf
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }
                                - \tweak stencil #abjad-flared-hairpin
                                \>
                                [

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                cs''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                ]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                cs''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                cs''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''16
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    cs''8
                                    \mp
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ]

                                }

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 10]

                                r2
                                \!

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'''8
                                \ff
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<

                                r8
                                \!

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'''8
                                \mf
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<
                                [

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f'''8
                                - \snappizzicato
                                ]

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 11]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'''8
                                \mp
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<
                                [

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d'''8
                                - \snappizzicato
                                ]

                                r8
                                \!

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'''8
                                \ff
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<

                                r8
                                \!

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f'''8
                                \f
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/12
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 12]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                e''4
                                \f
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                \>

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                e''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                e''2.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                e''2.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                    ]

                                }

                                \times 4/5
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    e''4
                                    \mf
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                }

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 13]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''8.
                            \mf
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                            \<
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''16
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''8
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            ~
                            ]

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''16
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''8.
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                ]

                            }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            f''8
                            \f
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                            - \tweak stencil #constante-hairpin
                            \<
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/8
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 14]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                ds''4
                                \!
                                \mf
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                - \tweak stencil #abjad-flared-hairpin
                                \>

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                ds''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''2
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }
                                    ]

                                }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    ds''4
                                    \mp
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                }

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 15]

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'''8
                                \ff
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'''8
                                - \snappizzicato

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d'''8
                                - \snappizzicato
                                ]

                                r8
                                \!

                                r4

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                f'''4
                                \mf
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<

                            }

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 16]

                                r4
                                \!

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                a'''8
                                \mp
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<
                                [

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                d'''8
                                - \snappizzicato
                                ]

                                r2
                                \!

                                r8

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs'''8
                                \ff
                                - \snappizzicato
                                - \tweak stencil #constante-hairpin
                                \<
                                \bar "||"

                            }

                        }

                    }

                }

            >>

        }

    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}