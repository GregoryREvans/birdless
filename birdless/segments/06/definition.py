import pathlib

import abjad
import evans

from birdless.lib import mark_120, on_beat_grace_handler_2, zero_padding_glissando
from birdless.materials.instruments import instruments
from birdless.materials.pitch import octave_up, squeal_pitch_handler_3
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_06
from birdless.materials.timespans import handler_commands_06, rhythm_commands_06

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
        rhythm_commands_06,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        evans.call(
            "Voice 1",
            octave_up,
            lambda _: abjad.Selection(_),
        ),
        handler_commands_06,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        evans.call(
            "Staff 1",
            on_beat_grace_handler_2,
            lambda _: abjad.Selection(_).logical_ties().get([24, -4, -3]),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     lambda _: abjad.Selection(_),
        # ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_3,
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
            lambda _: abjad.Selection(_).leaf(34),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(34),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(35),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(80),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(80),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(35),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\markup { \raise #4 c.2'}", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_120,
            lambda _: abjad.Selection(_).leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_06,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="06",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 120),
    rehearsal_mark="",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
