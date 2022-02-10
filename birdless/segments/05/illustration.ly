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

            \tempo 4=40
            %! scaling time signatures
            \time 4/8
            \mark \markup \bold {  }
            s1 * 1/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"40"
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 7/8
            s1 * 7/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            \time 8/8
            s1 * 1
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 9/8
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
                            %! abjad.glissando(7)
                            \glissando

                            <e' f'' b''>8
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/8
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 2]

                                <e' f'' b''>4
                                %! abjad.glissando(7)
                                \glissando

                                <e' f''>2
                                \mp

                                <fqs' e'' bqs''>4
                                \p
                                ^ \diagram-four-markup
                                \stopTextSpan
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 3]

                            <fqs' e'' bqs''>8

                            <aqf'' bqf''>4
                            \mp
                            ^ \diagram-ten-markup

                            <fqs' e'' bqs''>4.
                            \p
                            ^ \diagram-four-markup
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/9
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 4]

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
                                %! abjad.glissando(7)
                                \glissando

                                \revert Staff.Stem.stemlet-length
                                <e' f'' b''>8
                                ~
                                ]

                            }

                            \times 8/9
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 5]

                                <e' f'' b''>8
                                %! abjad.glissando(7)
                                \glissando

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
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

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
%! abjad.LilyPondFile._get_formatted_blocks()
}