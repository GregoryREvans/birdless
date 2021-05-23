import pathlib

import abjad
import baca
import evans

from birdless.lib import (
    flutter_tongue,
    mark_40,
    on_beat_grace_handler,
    zero_padding_glissando,
)
from birdless.materials.instruments import instruments
from birdless.materials.pitch import squeal_pitch_handler_2
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_03
from birdless.materials.timespans import handler_commands_03, rhythm_commands_03

start_span = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\diagram-eleven-span-markup", literal=True),
    style="solid-line-with-hook",
)
abjad.tweak(start_span).padding = 12
abjad.tweak(start_span).staff_padding = 12

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
        rhythm_commands_03,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_03,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        # evans.attach(
        #     "Global Context",
        #     met_108,
        #     baca.leaf(0),
        # ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.call(
            "Voice 1", on_beat_grace_handler, baca.leaves().get([0, 1, 2, 3, 4, 5])
        ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_2,
            baca.leaves(grace=True),
        ),
        evans.call(
            "Staff 1",
            zero_padding_glissando,
            baca.leaves(grace=True),
        ),
        evans.call(
            "Staff 1",
            abjad.glissando,
            abjad.select().leaves(grace=False).get([6, 7, 8, 9, 10, 11, 12]),
        ),
        evans.call(
            "Staff 1",
            flutter_tongue,
            baca.leaves(grace=True).get([17, 18, 19, 20, 21, 22, 23, 24, 25]),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("fff"),
            baca.leaf(2, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("mf"),
            baca.leaf(3, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("fff"),
            baca.leaf(5, grace=False),
        ),
        evans.call(
            "Staff 1",
            flutter_tongue,
            baca.leaves(grace=True).get([43, 44, 45]),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("mf"),
            baca.leaf(0, grace=False),
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
            abjad.Dynamic("ff"),
            baca.leaf(6, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin(">"),
            baca.leaf(6, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p"),
            baca.leaf(7, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin(">"),
            baca.leaf(7, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("pp"),
            baca.leaf(8, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<"),
            baca.leaf(8, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p"),
            baca.leaf(11, grace=False),
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
            abjad.Markup(
                r"\markup { \raise #4 c.5'}", direction=abjad.Up, literal=True
            ),
            baca.leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_40,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_03,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="03",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 40),
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
