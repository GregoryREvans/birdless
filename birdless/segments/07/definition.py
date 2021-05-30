import pathlib

import abjad
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
            abjad.Markup(r"\normale-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(direction=abjad.Up),
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            abjad.select().leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartTrillSpan(),
            abjad.select().leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTrillSpan(),
            abjad.select().leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ix-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-even-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(11),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ix-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(15),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(18),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(19),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(23),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(25),
        ),
        evans.attach(
            "Voice 1",
            start_span,
            abjad.select().leaf(26),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            abjad.select().leaf(-2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            abjad.select().leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            abjad.select().leaf(24),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            abjad.select().leaf(25),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            abjad.select().leaf(25),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            abjad.select().leaf(28),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            abjad.select().leaf(28),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            abjad.select().leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            abjad.select().leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            abjad.select().leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            abjad.select().leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            abjad.select().leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            abjad.select().leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            abjad.select().leaf(34),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            abjad.select().leaf(34),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            abjad.select().leaf(35),
        ),
        evans.call(
            "Voice 1",
            abjad.glissando,
            abjad.select().leaves().get([26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
        ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler_3,
            abjad.select().leaf(24),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(24, grace=False),
        ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_4,
            abjad.select().leaves(grace=True),
        ),
        evans.call(
            "Staff 1",
            zero_padding_glissando,
            abjad.select().leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(25, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(
                r"\markup { \raise #4 c.5'}", direction=abjad.Up, literal=True
            ),
            abjad.select().leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_75,
            abjad.select().leaf(0),
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
