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

            \tempo 4=75
            %! scaling time signatures
            \time 3/2
            \mark \markup \bold {  }
            s1 * 3/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"75"
              }
            }
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 2]

            %! scaling time signatures
            \time 9/8
            s1 * 9/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 7/8
            s1 * 7/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 4]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 5]

            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 6]

            %! scaling time signatures
            \time 4/8
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 7]

            %! scaling time signatures
            \time 2/4
            s1 * 1/2
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 8]

            %! scaling time signatures
            \time 5/8
            s1 * 5/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 9]

            %! scaling time signatures
            \time 6/8
            s1 * 3/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 10]

            %! scaling time signatures
            \time 7/8
            s1 * 7/8
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 11]

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

                            \times 4/5
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
                                \override Staff.Stem.stemlet-length = 0.75
                                d'16
                                \mf
                                ^ \normale-markup
                                [
                                ^ (

                                bf'8

                                fs'16

                                e'16

                                ef'16

                                a'16

                                bf'16

                                e'16

                                \revert Staff.Stem.stemlet-length
                                ef'16
                                ]

                            }

                            d'1
                            )
                            \startTrillSpan

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 9/8
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 2]

                                <eqs' fqs'' cqs''' f'''>8
                                \ff
                                ^ \diagram-ix-markup
                                \stopTrillSpan

                                <e' fqs'' c''' f'''>2
                                ^ \diagram-even-markup
                                ~

                                <e' fqs'' c''' f'''>8

                                <eqs' fqs'' cqs''' f'''>4
                                ^ \diagram-ix-markup

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/9
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 3]

                                <d'' fqs'' e''' bqf'''>4.
                                ^ \diagram-fifteen-markup

                                <d'' fqs'' e''' bqf'''>2
                                ^ \diagram-fifteen-markup

                                <d'' fqs'' e''' bqf'''>4
                                ^ \diagram-fifteen-markup
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 4]

                            <d'' fqs'' e''' bqf'''>8

                            <cqs'' g'' e''' bf'''>4
                            ^ \diagram-thirteen-markup

                            <cqs'' g'' e''' bf'''>4.
                            ^ \diagram-thirteen-markup
                            ~

                            \scaleDurations #'(1 . 1)
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 5]

                                <cqs'' g'' e''' bf'''>2
                                ~

                                <cqs'' g'' e''' bf'''>8
                                ~

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 6]

                            <cqs'' g'' e''' bf'''>8

                            <c'' eqf'' d''' gs'''>4.
                            ^ \diagram-twelve-markup

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 7]

                                    \slash
                                    \voiceOne
                                    \tweak Accidental.stencil ##f
                                    c'''16
                                    [
                                    (
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    ef'''16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    c'2
                                    \f
                                    ^ \teeth-on-reed-markup

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 8]

                            <c'' eqf'' d''' gs'''>4
                            \ff
                            ^ \diagram-twelve-markup
                            ^ \normale-markup
                            \>

                            <gtqs' bqf'' f'''>8
                            ~
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \diagram-eleven-markup \hspace #0.5 }
                            - \tweak padding 10
                            - \tweak staff-padding 10
                            \startTextSpan

                            \override Staff.Stem.stemlet-length = 0.75
                            <gtqs' bqf'' f'''>8
                            [
                            %! abjad.glissando(7)
                            \glissando

                            \revert Staff.Stem.stemlet-length
                            <aqf'' bqf''>8
                            \p
                            \>
                            ~
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 9]

                                <aqf'' bqf''>4
                                %! abjad.glissando(7)
                                \glissando

                                <gtqs' af''>2
                                \pp
                                \<
                                %! abjad.glissando(7)
                                \glissando

                                <aqf'' bqf''>4.
                                \p
                                \>
                                %! abjad.glissando(7)
                                \glissando

                                <gtqs' af''>8
                                \pp
                                \<
                                ~

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/10
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 10]

                                <gtqs' af''>8
                                %! abjad.glissando(7)
                                \glissando

                                <aqf'' bqf''>2.
                                \p
                                \>
                                %! abjad.glissando(7)
                                \glissando

                                <gtqs' af''>4.
                                \pp
                                \bar "||"

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 11]

                            %! applying ending skips
                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                            %! applying ending skips
                            \once \override Rest.color = #white
                            r1 * 3/32
                            \stopTextSpan

                            %! applying ending skips
                            \once \override MultiMeasureRest.color = #white
                            R1 * 3/32
                            %! applying ending skips
                            ^ \markup \center-align \musicglyph #"scripts.ufermata" 
                            ^ \markup { \raise #4 c.5'}
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