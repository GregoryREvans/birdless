import pathlib

import abjad
import evans

from birdless.lib import mark_130, on_beat_grace_handler_5, zero_padding_glissando
from birdless.materials.instruments import instruments
from birdless.materials.pitch import squeal_pitch_handler_4
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_11
from birdless.materials.timespans import handler_commands_11, rhythm_commands_11

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
        rhythm_commands_11,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_11,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     lambda _: abjad.Selection(_),
        # ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler_5,
            lambda _: abjad.Selection(_)
            .leaves()
            .get([0, 8, 9, 15, 16, 17, 24, 25, 26, 27]),
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
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(38),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(69),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(109),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(0, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(14),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(23),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(23),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(37),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(30, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(30, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(38, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(54),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(54),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(68),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(70),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(70),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(78),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(80),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(80),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(86),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(94),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(94),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(108),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(110),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(110),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(118),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(120),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(120),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(126),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(128),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(128),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(131),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(2, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(2, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(11, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(11, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(18, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(18, grace=False),
        ),
        # evans.attach(
        #     "Staff 1",
        #     abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
        #     lambda _: abjad.Selection(_).leaf(0, grace=False),
        # ),
        # evans.attach(
        #     "Staff 1",
        #     abjad.Markup(r"\normale-markup", direction=abjad.Up),
        #     lambda _: abjad.Selection(_).leaf(6, grace=False),
        # ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\markup { \raise #4 c.2'}", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_130,
            lambda _: abjad.Selection(_).leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_11,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="11",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 130),
    rehearsal_mark="",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
