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
    left_text=abjad.Markup(r"\diagram-eleven-markup"),
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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_07,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "Voice 1",
            hide_tuplet,
            lambda _: abjad.Selection(_),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     lambda _: abjad.Selection(_),
        # ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\normale-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartSlur(direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopSlur(),
            lambda _: abjad.Selection(_).leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartTrillSpan(),
            lambda _: abjad.Selection(_).leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTrillSpan(),
            lambda _: abjad.Selection(_).leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ix-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-even-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(11),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ix-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(13),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(15),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fifteen-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(18),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(19),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(23),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(25),
        ),
        evans.attach(
            "Voice 1",
            start_span,
            lambda _: abjad.Selection(_).leaf(26),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            lambda _: abjad.Selection(_).leaf(-2),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mf"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            lambda _: abjad.Selection(_).leaf(24),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(25),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(25),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(28),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(28),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(30),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(31),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(32),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(34),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(34),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(35),
        ),
        evans.call(
            "Voice 1",
            abjad.glissando,
            lambda _: abjad.Selection(_)
            .leaves()
            .get([26, 27, 28, 29, 30, 31, 32, 33, 34, 35]),
        ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler_3,
            lambda _: abjad.Selection(_).leaf(24),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(24, grace=False),
        ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_4,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.call(
            "Staff 1",
            zero_padding_glissando,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(25, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\markup { \raise #4 c.5'}", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_75,
            lambda _: abjad.Selection(_).leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_07,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/birdless/birdless/build/score_stylesheet.ily",
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
