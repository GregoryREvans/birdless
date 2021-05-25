import pathlib

import abjad
import baca
import evans

from birdless.lib import mark_108, on_beat_grace_handler_4, zero_padding_glissando
from birdless.materials.instruments import instruments
from birdless.materials.pitch import squeal_pitch_handler_4
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_10
from birdless.materials.timespans import handler_commands_10, rhythm_commands_10

start_span = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\sub-tone-markup", literal=True),
    style="solid-line-with-hook",
)
abjad.tweak(start_span).padding = 5
abjad.tweak(start_span).staff_padding = 5

maker = evans.SegmentMaker(
    instruments=instruments,
    names=[
        '"Alto Saxophone"',
    ],
    abbreviations=[
        '" "',
    ],
    name_staves=True,
    commands=[
        rhythm_commands_10,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_10,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler_4,
            baca.leaves().get([0, 1, 2, 3, 4, 5]),
        ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_4,
            baca.leaves(grace=True),
        ),
        evans.call(
            "Staff 1",
            zero_padding_glissando,
            baca.leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ppp"),
            baca.leaf(6, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<"),
            baca.leaf(6, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("mp"),
            baca.leaf(16, grace=False),
        ),
        evans.attach(
            "Staff 1",
            start_span,
            baca.leaf(6, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StopTextSpan(),
            baca.leaf(-2),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", literal=True, direction=abjad.Up),
            baca.leaf(0, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", literal=True, direction=abjad.Up),
            baca.leaf(6, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.BendAfter(3),
            baca.leaf(-6, grace=False, pitched=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.BendAfter(-2.5),
            baca.leaf(-1, grace=False, pitched=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(
                r"\markup { \raise #4 c.3'}", direction=abjad.Up, literal=True
            ),
            baca.leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_108,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_10,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="10",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 108),
    rehearsal_mark="",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
