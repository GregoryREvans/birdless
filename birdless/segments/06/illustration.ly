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

            \tempo 4=120
            %! scaling time signatures
            \time 6/4
            \mark \markup \bold {  }
            s1 * 3/2
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
            \time 7/4
            s1 * 7/4
            %! COMMENT_MEASURE_NUMBERS
            %! abjad.SegmentMaker.comment_measure_numbers()
            % [Global Context measure 3]

            %! scaling time signatures
            \time 4/4
            s1 * 1
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
            \time 8/4
            s1 * 2
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

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 3/5
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
                                b''4
                                \p
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''2
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                b''2
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                \times 4/5
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                    ]

                                }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-natural-markup
                                    b''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                }

                            }

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 7/12
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 2]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''2.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                fs''2.
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                    ]

                                }

                                \times 4/5
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    fs''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                }

                            }

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 3]

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
                                    cs'''8
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'''8
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
                                    d'''16
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
                                    cs'''8
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    cs'''8
                                    )
                                    ]
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    af'1
                                    \pp
                                    ^ \teeth-on-reed-markup

                                }

                            >>

                            \tweak text #tuplet-number::calc-fraction-text
                            \times 5/8
                            {
                                %! abjad.on_beat_grace_container(5)
                                \oneVoice
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 4]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''4.
                                \mp
                                ^ \normale-markup
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 9 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \times 2/3
                                {

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''2
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                                }

                                \times 2/3
                                {

                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                    [

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''8
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }
                                    ]

                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \abjad-sharp-markup
                                    as''4
                                    ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }
                                [

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-sharp-markup
                                as''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                                ]

                            }
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 5]

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            g''4
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                                ]

                            }

                            \times 2/3
                            {

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                g''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }

                            }

                            \times 2/3
                            {
                                %! COMMENT_MEASURE_NUMBERS
                                %! abjad.SegmentMaker.comment_measure_numbers()
                                % [Voice 1 measure 6]

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 8 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''4
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }

                            }

                            \override Staff.Stem.stemlet-length = 0.75
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c'''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 2 }
                            [

                            \revert Staff.Stem.stemlet-length
                            \tweak Accidental.stencil #ly:text-interface::print
                            \tweak Accidental.text \abjad-natural-markup
                            c'''8
                            ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 1 }
                            ]

                            \times 4/5
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 5 }

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''16
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 6 }
                                ]

                            }

                            \times 2/3
                            {

                                \override Staff.Stem.stemlet-length = 0.75
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 7 }
                                [

                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 4 }

                                \revert Staff.Stem.stemlet-length
                                \tweak Accidental.stencil #ly:text-interface::print
                                \tweak Accidental.text \abjad-natural-markup
                                c'''8
                                ^ \markup { \override #'(circle-padding . 0.25) \circle \finger 3 }
                                ]

                            }

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
                                    f'''16
                                    [
                                    (
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
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
                                    cs'''8
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    e'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    g'''8
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
                                    fs'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    ef'''16
                                    )
                                    ]
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    cs'2.
                                    \ff
                                    ^ \teeth-on-reed-markup

                                }

                            >>

                            <<

                                \context Voice = "On_Beat_Grace_Container"
                                {
                                    %! abjad.on_beat_grace_container(1)
                                    \set fontSize = #-4
                                    %! COMMENT_MEASURE_NUMBERS
                                    %! abjad.SegmentMaker.comment_measure_numbers()
                                    % [Voice 1 measure 8]

                                    \slash
                                    \voiceOne
                                    \tweak Accidental.stencil ##f
                                    cs'''8
                                    [
                                    (
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    d'''16
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    \tweak X-extent #'(0 . 0)
                                    \tweak transparent ##t
                                    f'''8
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
                                    d'''16
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
                                    f'''8
                                    %! abjad.glissando(7)
                                    - \abjad-zero-padding-glissando
                                    %! abjad.glissando(7)
                                    \glissando

                                    \tweak Accidental.stencil ##f
                                    af'''16
                                    )
                                    ]

                                }

                                \context Voice = "Voice 1"
                                {

                                    %! abjad.on_beat_grace_container(4)
                                    \voiceTwo
                                    e'1
                                    \bar "||"

                                }

                            >>
                            %! abjad.on_beat_grace_container(5)
                            \oneVoice
                            %! COMMENT_MEASURE_NUMBERS
                            %! abjad.SegmentMaker.comment_measure_numbers()
                            % [Voice 1 measure 9]

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