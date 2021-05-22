\version "2.19.84"
\language "english"
#(set-default-paper-size "a4portrait")
#(set-global-staff-size 14)

\include "../../lib.ily"

\header {
	tagline = ##f
	breakbefore = ##t
	dedication = \markup \override #'(font-name . "STIXGeneral") \fontsize #3.4 \center-column {"t o   S t e p h   T a m a s" \with-color #white "."}
	title =  \markup \override #'(font-name . "STIXGeneral") \fontsize #11 \bold\center-column {"Birdless, Cloudless, Colourless" }
	subtitle = \markup \center-column { \with-color #white "." \override #'(font-name . "STIXGeneral") \fontsize #5.27 "o r ,   b a t s   i n   O h i o" }
	subsubtitle = \markup \center-column { \with-color #white "." \override #'(font-name . "STIXGeneral") \fontsize #2.27 "for alto saxophone" }
	composer = \markup \override #'(font-name . "STIXGeneral") \fontsize #2.3 {"Gregory Rowland Evans (*1995)"}
}

\layout {
    \accidentalStyle dodecaphonic
    indent = #15
	ragged-last = ##t
    ragged-right = ##t
	\context {
        \name TimeSignatureContext
        \type Engraver_group
        \numericTimeSignature
        \consists Axis_group_engraver
		\consists Bar_number_engraver
        %{ \consists Time_signature_engraver %}
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\override BarNumber.Y-extent = #'(0 . 0)
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-4 . 0)
		\override BarNumber.font-size = 5
		\override BarNumber.padding = 4
		\override BarNumber.font-name = "STIXGeneral"
		\override MetronomeMark.stencil = ##f
		\override RehearsalMark.X-extent = #'(0 . 0)
		\override RehearsalMark.X-offset = 6
		\override RehearsalMark.Y-offset = -2.5
		\override RehearsalMark.break-align-symbols = #'(time-signature)
		\override RehearsalMark.break-visibility = #end-of-line-invisible
		\override RehearsalMark.font-name = "STIXGeneral"
		\override RehearsalMark.font-size = 9.5
		\override RehearsalMark.outside-staff-priority = 500
		\override RehearsalMark.self-alignment-X = #center
		\override TimeSignature.padding = #7
        \override TimeSignature.X-offset = #ly:self-alignment-interface::x-aligned-on-self
        \override TimeSignature.Y-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbol = ##f
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = #7
		\override TimeSignature.font-name = "STIXGeneral"
        \override TimeSignature.self-alignment-X = #center
		\override TimeSignature.whiteout-style = #'outline
		\override TimeSignature.whiteout = ##t
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 13) (minimum-distance . 13) (padding . 4) (stretchability . 0))
    }
	\context {
		\Score
		\remove Metronome_mark_engraver
		\remove Bar_number_engraver
		\remove Mark_engraver
		\accepts TimeSignatureContext
		\override BarLine.bar-extent = #'(-2 . 2)
		\override BarLine.hair-thickness = #0.9
		\override BarLine.thick-thickness = #8
		\override Beam.breakable = ##t
		\override Beam.concaveness = #10000
		\override Clef.whiteout-style = #'outline
		\override Clef.whiteout = 1
		\override DynamicText.font-size = #-2
		\override DynamicLineSpanner.staff-padding = 5 %was 4.5
		\override Glissando.breakable = ##t
		\override Glissando.thickness = #1.8 %was 2
		\override Staff.thickness = #0.5
		\override MetronomeMark.font-size = 3
		%{ \override SpacingSpanner.strict-grace-spacing = ##t
		\override SpacingSpanner.strict-note-spacing = ##t
		\override SpacingSpanner.uniform-stretching = ##t %}
		\override StaffGrouper.staff-staff-spacing = #'((basic-distance . 11) (minimum-distance . 11) (padding . 2))
		\override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 11) (minimum-distance . 11) (padding . 2))
		\override Stem.stemlet-length = #1.15
		\override StemTremolo.slope = #0.3
		\override StemTremolo.shape = #'beam-like
		\override StemTremolo.beam-thickness = #0.3
		\override TupletBracket.bracket-visibility = ##t
		\override TupletBracket.minimum-length = #3
		\override TupletBracket.padding = #1.55
		\override TupletBracket.staff-padding = #1.55
		\override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
		\override TupletBracket.direction = #down
		\override TupletNumber.font-size = 0.5
		\override TupletNumber.text = #tuplet-number::calc-fraction-text
		autoBeaming = ##f
		proportionalNotationDuration = #(ly:make-moment 1 19)
		tupletFullLength = ##t
	}
	\context {
		\Voice
		\remove Forbid_line_break_engraver
		\override Accidental.font-size = 1
	}
	\context {
		\Staff
		\numericTimeSignature
		%{ \remove Time_signature_engraver %}
		fontSize = #-1
	}
	\context {
		\RhythmicStaff
		\remove Time_signature_engraver
	}
	\context {
		\GrandStaff
		systemStartDelimiter = #'SystemStartSquare
		%{ \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 17) (minimum-distance . 17) (padding . 0)) %}
    }
	\context {
		\PianoStaff
		systemStartDelimiter = #'SystemStartBrace
		%{ \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 17) (minimum-distance . 17) (padding . 0)) %}
	}
	\context {
 		\StaffGroup
		systemStartDelimiter = #'SystemStartBracket
  %{ \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 17) (minimum-distance . 17) (padding . 0)) %}
	}


}

\paper {
	%{ system-separator-markup = \markup { \slashSeparator } %}
	system-system-spacing = #'((basic-distance . 16) (minimum-distance . 16) (padding . 2))

	indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm

	oddHeaderMarkup = \markup ""
	evenHeaderMarkup = \markup ""
	oddFooterMarkup = \markup
        \fill-line {
            \override #'(font-name . "STIXGeneral")
                \bold \fontsize #3 "Birdless - GR Evans"
            \concat {
                \override #'(font-name . "STIXGeneral")
                    \bold \fontsize #3
                        \fromproperty #'page:page-number-string
                }
            }
    evenFooterMarkup = \markup
        \fill-line {
            \concat {
                \override #'(font-name . "STIXGeneral")
                    \bold \fontsize #3
                        \fromproperty #'page:page-number-string
                }
            \override #'(font-name . "STIXGeneral")
                \bold \fontsize #3 "Birdless - GR Evans"
            }
}
