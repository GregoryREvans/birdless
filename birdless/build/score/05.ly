
    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=40
            \time 4/8                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 1/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"40"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/8                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/8                                                          %! scaling time signatures
            s1 * 7/8
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 8/8                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/8                                                          %! scaling time signatures
            s1 * 9/8

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
                            <fqs' e'' bqs''>8
                            \p
                            ^ \diagram-four-markup
                            \stopTextSpan

                            <e' gs' f'' bqs''>4
                            \pp
                            \<
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \diagram-five-markup \hspace #0.5 }
                            - \tweak padding 7
                            - \tweak staff-padding 7
                            \startTextSpan
                            \glissando                                         %! abjad.glissando(7)

                            <e' f'' b''>8
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/8 {
                                % [Voice 1 measure 2]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <e' f'' b''>4
                                \glissando                                     %! abjad.glissando(7)

                                <e' f''>2
                                \mp

                                <fqs' e'' bqs''>4
                                \p
                                ^ \diagram-four-markup
                                \stopTextSpan
                                ~

                            }
                            % [Voice 1 measure 3]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <fqs' e'' bqs''>8

                            <aqf'' bqf''>4
                            \mp
                            ^ \diagram-ten-markup

                            <fqs' e'' bqs''>4.
                            \p
                            ^ \diagram-four-markup
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/9 {
                                % [Voice 1 measure 4]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <fqs' e'' bqs''>4.

                                <e' gs' f'' bqs''>2
                                \pp
                                \<
                                ~
                                - \abjad-solid-line-with-hook
                                - \tweak bound-details.left.text \markup \concat { \diagram-five-markup \hspace #0.5 }
                                - \tweak padding 7
                                - \tweak staff-padding 7
                                \startTextSpan

                                \override Staff.Stem.stemlet-length = 0.75
                                <e' gs' f'' bqs''>8
                                [
                                \glissando                                     %! abjad.glissando(7)

                                \revert Staff.Stem.stemlet-length
                                <e' f'' b''>8
                                ~
                                ]

                            }

                            \times 8/9 {
                                % [Voice 1 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <e' f'' b''>8
                                \glissando                                     %! abjad.glissando(7)

                                <e' f''>4.
                                \mp

                                <fqs' e'' bqs''>2
                                \p
                                ^ \diagram-four-markup
                                \stopTextSpan

                                <aqf'' bqf''>8
                                \mp
                                ^ \diagram-ten-markup
                                ~

                            }
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <aqf'' bqf''>4

                            <fqs' e'' bqs''>8
                            \p
                            ^ \diagram-four-markup
                            ~

                            <fqs' e'' bqs''>8

                            <aqf'' bqf''>4
                            \mp
                            ^ \diagram-ten-markup
                            ~

                            <aqf'' bqf''>4.
                            \bar "||"

                        }

                    }

                }

            >>

        }

    >>
