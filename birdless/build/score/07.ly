
    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=75
            \time 3/2                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 3/2
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"75"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/8                                                          %! scaling time signatures
            s1 * 9/8
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/8                                                          %! scaling time signatures
            s1 * 7/8
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/8                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/8                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 5/8                                                          %! scaling time signatures
            s1 * 5/8
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 6/8                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 7/8                                                          %! scaling time signatures
            s1 * 7/8
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                            \times 4/5 {
                                % [Voice 1 measure 1]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \set Staff.shortInstrumentName =               %! applying staff names and clefs
                                \markup { \hcenter-in #12 " " }                %! applying staff names and clefs
                                \set Staff.instrumentName =                    %! applying staff names and clefs
                                \markup { \hcenter-in #14 "Alto Saxophone" }   %! applying staff names and clefs
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
                            \times 9/8 {
                                % [Voice 1 measure 2]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                            \times 7/9 {
                                % [Voice 1 measure 3]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <d'' fqs'' e''' bqf'''>4.
                                ^ \diagram-fifteen-markup

                                <d'' fqs'' e''' bqf'''>2
                                ^ \diagram-fifteen-markup

                                <d'' fqs'' e''' bqf'''>4
                                ^ \diagram-fifteen-markup
                                ~

                            }
                            % [Voice 1 measure 4]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <d'' fqs'' e''' bqf'''>8

                            <cqs'' g'' e''' bf'''>4
                            ^ \diagram-thirteen-markup

                            <cqs'' g'' e''' bf'''>4.
                            ^ \diagram-thirteen-markup
                            ~

                            \scaleDurations #'(1 . 1) {
                                % [Voice 1 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <cqs'' g'' e''' bf'''>2
                                ~

                                <cqs'' g'' e''' bf'''>8
                                ~

                            }
                            % [Voice 1 measure 6]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <cqs'' g'' e''' bf'''>8

                            <c'' eqf'' d''' gs'''>4.
                            ^ \diagram-twelve-markup

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 7]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    c'''16
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    af'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    ef'''16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    c'2
                                    \f
                                    ^ \teeth-on-reed-markup

                                }

                            >>
                            \oneVoice                                          %! abjad.on_beat_grace_container(5)
                            % [Voice 1 measure 8]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                            \glissando                                         %! abjad.glissando(7)

                            \revert Staff.Stem.stemlet-length
                            <aqf'' bqf''>8
                            \p
                            \>
                            ~
                            ]

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5 {
                                % [Voice 1 measure 9]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <aqf'' bqf''>4
                                \glissando                                     %! abjad.glissando(7)

                                <gtqs' af''>2
                                \pp
                                \<
                                \glissando                                     %! abjad.glissando(7)

                                <aqf'' bqf''>4.
                                \p
                                \>
                                \glissando                                     %! abjad.glissando(7)

                                <gtqs' af''>8
                                \pp
                                \<
                                ~

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/10 {
                                % [Voice 1 measure 10]                         %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <gtqs' af''>8
                                \glissando                                     %! abjad.glissando(7)

                                <aqf'' bqf''>2.
                                \p
                                \>
                                \glissando                                     %! abjad.glissando(7)

                                <gtqs' af''>4.
                                \pp
                                \bar "||"

                            }
                            % [Voice 1 measure 11]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff %! applying ending skips
                            \once \override Rest.color = #white                %! applying ending skips
                            r1 * 3/32
                            \stopTextSpan

                            \once \override MultiMeasureRest.color = #white    %! applying ending skips
                            R1 * 3/32
                            ^ \markup \center-align \musicglyph #"scripts.ufermata" %! applying ending skips
                            ^ \markup { \raise #4 c.5'}
                            \stopStaff \startStaff                             %! applying ending skips

                        }

                    }

                }

            >>

        }

    >>
