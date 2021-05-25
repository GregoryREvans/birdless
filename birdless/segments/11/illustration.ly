\version "2.19.84"                                                             %! abjad.LilyPondFile._get_format_pieces()
\language "english"                                                            %! abjad.LilyPondFile._get_format_pieces()

\include "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily"           %! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\score {                                                                       %! abjad.LilyPondFile._get_formatted_blocks()

    \context Score = "birdless Score"
    <<

        \context TimeSignatureContext = "Global Context"
        {
            % [Global Context measure 1]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \tempo 4=130
            \time 4/4                                                          %! scaling time signatures
            \mark \markup \bold {  }
            s1 * 1
            ^ \markup {
              \huge
              \concat {
                  \abjad-metronome-mark-markup #2 #0 #1 #"130"
              }
            }
            % [Global Context measure 2]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 5/6                                                          %! scaling time signatures
            s1 * 5/6
            % [Global Context measure 3]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 4]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 5]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 4/6                                                          %! scaling time signatures
            s1 * 2/3
            % [Global Context measure 6]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 7]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 8]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 9]                                       %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            #(ly:expect-warning "strange time signature found")                %! scaling time signatures
            \time 3/6                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 10]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 4/4                                                          %! scaling time signatures
            s1 * 1
            % [Global Context measure 11]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 3/4                                                          %! scaling time signatures
            s1 * 3/4
            % [Global Context measure 12]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 2/4                                                          %! scaling time signatures
            s1 * 1/2
            % [Global Context measure 13]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

            \time 1/4                                                          %! scaling time signatures
            s1 * 1/4
            % [Global Context measure 14]                                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
                                    c'''16
                                    ^ \p
                                    ^ \teeth-on-reed-markup
                                    ^ \<
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
                                    f'''16
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
                                    ef'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    cs'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    af'1

                                }

                            >>

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                \oneVoice                                      %! abjad.on_beat_grace_container(5)
                                % [Voice 1 measure 2]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r8

                                fs''8
                                \pp
                                - \snappizzicato
                                ^ \normale-markup

                                r4

                                a''4
                                - \snappizzicato

                                r4

                                r8

                                f''8
                                - \snappizzicato

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 3]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    fs'''16
                                    ^ \p
                                    ^ \<
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
                                    g'''16
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
                                    cs'''16
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

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e'''16
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
                                    g'''16
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
                                    ef'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    cs'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    cs'1
                                    ^ \teeth-on-reed-markup

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 4]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    f'''16
                                    ^ \p
                                    ^ \<
                                    [
                                    (
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
                                    g'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    ef'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    e'2.

                                }

                            >>

                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3 {
                                \oneVoice                                      %! abjad.on_beat_grace_container(5)
                                % [Voice 1 measure 5]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                r2

                                d''8
                                \pp
                                - \snappizzicato
                                ^ \normale-markup

                                r8

                                \override Staff.Stem.stemlet-length = 0.75
                                a''8
                                - \snappizzicato
                                [

                                \revert Staff.Stem.stemlet-length
                                f''8
                                - \snappizzicato
                                ]

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 6]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    c'''16
                                    ^ \p
                                    ^ \<
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
                                    f'''16
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
                                    ef'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    cs'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    c'1
                                    ^ \teeth-on-reed-markup

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 7]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    fs'''16
                                    ^ \p
                                    ^ \<
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
                                    g'''16
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
                                    cs'''16
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

                                    e'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    g'2.

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 8]                      %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    cs'''16
                                    ^ \p
                                    ^ \<
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
                                    g'''16
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
                                    ef'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    cs'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    f'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    af'2

                                }

                            >>

                            \times 2/3 {
                                \oneVoice                                      %! abjad.on_beat_grace_container(5)
                                % [Voice 1 measure 9]                          %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                \override Staff.Stem.stemlet-length = 0.75
                                fs''8
                                \pp
                                - \snappizzicato
                                ^ \normale-markup
                                [

                                \revert Staff.Stem.stemlet-length
                                d''8
                                - \snappizzicato
                                ]

                                r8

                                a''8
                                - \snappizzicato

                                r8

                                fs''8
                                - \snappizzicato

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 10]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    af'''16
                                    ^ \p
                                    ^ \<
                                    [
                                    (
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
                                    g'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'''16
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
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    cs'1
                                    ^ \teeth-on-reed-markup

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 11]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    d'''16
                                    ^ \p
                                    ^ \<
                                    [
                                    (
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
                                    cs'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    fs'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    e'2.

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 12]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    ef'''16
                                    ^ \p
                                    ^ \<
                                    [
                                    (
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'''16
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
                                    cs'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'''16
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                    cs'''16
                                    ^ \ff
                                    )
                                    ]
                                    - \abjad-zero-padding-glissando            %! abjad.glissando(7)
                                    \glissando                                 %! abjad.glissando(7)

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    c'2

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    \set fontSize = #-4                        %! abjad.on_beat_grace_container(1)
                                    % [Voice 1 measure 13]                     %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

                                    \slash
                                    \voiceOne
                                    e'''16
                                    ^ \p
                                    ^ \<
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

                                    g'''16
                                    ^ \ff
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    \voiceTwo                                  %! abjad.on_beat_grace_container(4)
                                    g'4
                                    \bar "||"

                                }

                            >>
                            \oneVoice                                          %! abjad.on_beat_grace_container(5)
                            % [Voice 1 measure 14]                             %! COMMENT_MEASURE_NUMBERS:abjad.SegmentMaker.comment_measure_numbers()

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
}                                                                              %! abjad.LilyPondFile._get_formatted_blocks()