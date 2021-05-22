
    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=108
            \time 4/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 1
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"108"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 5/6                                                          %! scaling time signatures
            s1 * 5/6
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 1]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \set Staff.shortInstrumentName =           %! applying staff names and clefs
                                    \markup { \hcenter-in #12 " " }            %! applying staff names and clefs
                                    \set Staff.instrumentName =                %! applying staff names and clefs
                                    \markup { \hcenter-in #14 "Alto Saxophone" } %! applying staff names and clefs
                                    \slash
                                    \voiceOne
                                    c'''8
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
                                    c'''16
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
                                    c'''8
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
                                    d'''8
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    c'''16
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)
                                    \breathe

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    cs'1
                                    \mp
                                    ^ \teeth-on-reed-markup
                                    \<

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 2]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    cs'''8
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \upright tone \hspace #0.5 }
                                    - \tweak bound-details.right.padding 1.4
                                    - \tweak staff-padding #9
                                    \startTextSpanOne

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
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
                                    d'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''8
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'''8
                                    \stopTextSpanOne
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { \upright air \hspace #0.5 }
                                    - \tweak bound-details.right.padding 3
                                    - \tweak staff-padding #9
                                    \startTextSpanOne

                                    \tweak NoteHead.style #'cross
                                    d'''16
                                    )
                                    \stopTextSpanOne
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)
                                    \breathe

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    e'2.
                                    \fp
                                    - \tweak stencil #constante-hairpin
                                    \<

                                }

                            >>

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                \oneVoice                                      %! abjad.on_beat_grace_container(5)
                                % [Voice 1 measure 3]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r8
                                \!

                                f''8
                                \pp
                                - \snappizzicato
                                ^ \normale-markup

                                r4

                                d''4
                                - \snappizzicato

                                r4

                                r8

                                fs''8
                                - \snappizzicato

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 4]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    ef'''16
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''8
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
                                    d'''16
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
                                    d'''8
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
                                    d'''8
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    ef'''16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    c'1
                                    \mp
                                    ^ \teeth-on-reed-markup
                                    \bar "||"

                                }

                            >>
                            \oneVoice                                          %! abjad.on_beat_grace_container(5)
                            % [Voice 1 measure 5]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
