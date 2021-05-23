
    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=40
            \time 4/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 1
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"40"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/4                                                          %! scaling time signatures
            s1 * 1/4
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 9/8                                                          %! scaling time signatures
            s1 * 9/8
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 8/8                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    g'1
                                    \mf
                                    ^ \teeth-on-reed-markup

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

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'''16
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
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    cs'''16
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    af'2.

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 3]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    d'''16
                                    :32
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''8
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'''16
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''8
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''8
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    cs'''16
                                    :32
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    cs'1
                                    \fff

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 4]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    d'''16
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'''8
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
                                    fs'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    a'''8
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    e'2
                                    \mf

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 5]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    af'''16
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'''8
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
                                    e'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    ef'''8
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
                                    fs'''16
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
                                    cs'''8
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    c'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    cs'''8
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    c'1

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 6]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    cs'''16
                                    :32
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
                                    :32
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    ef'''8
                                    :32
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    g'4
                                    \fff

                                }

                            >>
                            \oneVoice                                          %! abjad.on_beat_grace_container(5)
                            % [Voice 1 measure 7]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                            <gtqs' bqf'' f'''>4.
                            \ff
                            ^ \normale-markup
                            \>
                            \glissando                                         %! abjad.glissando(7)
                            - \abjad-solid-line-with-hook
                            - \tweak bound-details.left.text \markup \concat { \diagram-eleven-span-markup \hspace #0.5 }
                            - \tweak padding 12
                            - \tweak staff-padding 12
                            \startTextSpan

                            <aqf'' bqf''>4
                            \p
                            \>
                            \glissando                                         %! abjad.glissando(7)

                            <gtqs' af''>8
                            \pp
                            \<
                            ~

                            <gtqs' af''>4.
                            ~

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 8/7 {
                                % [Voice 1 measure 8]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                <gtqs' af''>4
                                \glissando                                     %! abjad.glissando(7)

                                <aqf'' bqf''>2
                                \p
                                ~

                                <aqf'' bqf''>8
                                \bar "||"

                            }
                            % [Voice 1 measure 9]                              %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
