import pathlib

import abjad
import baca
import evans

from birdless.lib import (
    hide_tuplet,
    mark_75,
    on_beat_grace_handler_3,
    zero_padding_glissando,
)
from birdless.materials.instruments import instruments
from birdless.materials.pitch import squeal_pitch_handler_4
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_07
from birdless.materials.timespans import handler_commands_07, rhythm_commands_07

start_span = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\diagram-eleven-markup", literal=True),
    style="solid-line-with-hook",
)
abjad.tweak(start_span).padding = 10
abjad.tweak(start_span).staff_padding = 10

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
        rhythm_commands_07,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_07,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "Voice 1",
            hide_tuplet,
            abjad.select(),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            baca.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartTrillSpan(),
            baca.leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTrillSpan(),
            baca.leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ix-markup", literal=True, direction=abjad.Up),
            baca.leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-even-markup", literal=True, direction=abjad.Up),
            baca.leaf(11),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ix-markup", literal=True, direction=abjad.Up),
            baca.leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", literal=True, direction=abjad.Up),
            baca.leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", literal=True, direction=abjad.Up),
            baca.leaf(15),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", literal=True, direction=abjad.Up),
            baca.leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", literal=True, direction=abjad.Up),
            baca.leaf(18),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", literal=True, direction=abjad.Up),
            baca.leaf(19),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", literal=True, direction=abjad.Up),
            baca.leaf(23),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", literal=True, direction=abjad.Up),
            baca.leaf(25),
        ),
        evans.attach(
            "Voice 1",
            start_span,
            baca.leaf(26),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            baca.leaf(-2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(24),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(25),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(25),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(28),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(28),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(34),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            baca.leaf(34),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(35),
        ),
        evans.call(
            "Voice 1",
            abjad.glissando,
            baca.leaves().get([26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
        ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler_3,
            baca.leaf(24),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", literal=True, direction=abjad.Up),
            baca.leaf(24, grace=False),
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
            abjad.Markup(r"\normale-markup", literal=True, direction=abjad.Up),
            baca.leaf(25, grace=False),
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
            mark_75,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_07,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="07",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 75),
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
