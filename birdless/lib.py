from random import seed, shuffle

import abjad
import evans


class WarbleFingerings(evans.handlers.Handler):
    def __init__(
        self,
        fingerings_list=None,
        forget=False,
        count=-1,
        name="Warble Fingerings",
    ):
        self.fingerings_list = fingerings_list
        self.forget = forget
        self._count = count
        self._cyc_fingerings = evans.CyclicList(
            lst=fingerings_list, forget=self.forget, count=self._count
        )
        self.name = name

    def __call__(self, selections):
        for tie in abjad.select(selections).logical_ties(pitched=True):
            first_leaf = abjad.select(tie).leaf(0)
            symbol = self._cyc_fingerings(r=1)[0]
            abjad.attach(symbol, first_leaf)

    def name(self):
        return self.name

    def state(self):
        return abjad.OrderedDict(
            [
                ("state", "No State Preservation Enabled!"),
            ]
        )


met_130 = abjad.MetronomeMark((1, 4), 130)
met_130_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 130)
mark_130 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_130_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_120 = abjad.MetronomeMark((1, 4), 120)
met_120_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 120)
mark_120 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_120_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_108 = abjad.MetronomeMark((1, 4), 108)
met_108_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 108)
mark_108 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_108_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_90 = abjad.MetronomeMark((1, 4), 90)
met_90_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 90)
mark_90 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_90_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_84 = abjad.MetronomeMark((1, 4), 84)
met_84_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 84)
mark_84 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_84_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_75 = abjad.MetronomeMark((1, 4), 75)
met_75_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 75)
mark_75 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_75_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_60 = abjad.MetronomeMark((1, 4), 60)
met_60_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 60)
mark_60 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_60_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_45 = abjad.MetronomeMark((1, 4), 45)
met_45_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 45)
mark_45 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_45_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_40 = abjad.MetronomeMark((1, 4), 40)
met_40_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 40)
mark_40 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_40_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_30 = abjad.MetronomeMark((1, 4), 30)
met_30_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 30)
mark_30 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_30_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)


def zero_padding_glissando(selections):
    abjad.glissando(selections[:], zero_padding=True, allow_repeats=True)
    for run in abjad.select(selections).runs():
        leaves = abjad.select(run).leaves()
        for leaf in leaves[1:-1]:
            abjad.tweak(leaf.note_head).Accidental.stencil = False
            abjad.tweak(leaf.note_head).transparent = True
            abjad.tweak(leaf.note_head).X_extent = (0, 0)


def with_sharps(selections):
    abjad.iterpitches.respell_with_sharps(selections)


on_beat_grace_handler = evans.OnBeatGraceHandler(
    number_of_attacks=[
        9,
        8,
        9,
        6,
        11,
        3,
        9,
        8,
        9,
        8,
        9,
        10,
        10,
        8,
        9,
        8,
    ],
    durations=[
        2,
        1,
        1,
        1,
        2,
        1,
        2,
        1,
        1,
    ],
    font_size=-4,
    leaf_duration=(1, 100),
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="On Beat Grace Handler",
)

on_beat_grace_handler_2 = evans.OnBeatGraceHandler(
    number_of_attacks=[
        10,
        9,
        8,
    ],
    durations=[
        1,
        2,
        1,
        2,
        1,
        1,
    ],
    font_size=-4,
    leaf_duration=(1, 100),
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="On Beat Grace Handler 2",
)

on_beat_grace_handler_3 = evans.OnBeatGraceHandler(
    number_of_attacks=[
        7,
    ],
    durations=[
        1,
    ],
    font_size=-4,
    leaf_duration=(1, 100),
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="On Beat Grace Handler 3",
)

on_beat_grace_handler_4 = evans.OnBeatGraceHandler(
    number_of_attacks=[
        15,
        10,
        13,
        6,
        12,
        4,
    ],
    durations=[
        1,
    ],
    font_size=-4,
    leaf_duration=(1, 100),
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="On Beat Grace Handler 4",
)

on_beat_grace_handler_5 = evans.OnBeatGraceHandler(
    number_of_attacks=[
        15,
        15,
        9,
        15,
        9,
        7,
        15,
        9,
        7,
        4,
    ],
    durations=[
        1,
    ],
    font_size=-4,
    leaf_duration=(1, 100),
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="On Beat Grace Handler 5",
)

tone_to_air = evans.TextSpanHandler(
    span_one_positions=["tone", "air"],
    span_one_style="dashed-line",
    span_one_padding=9,
    attach_span_one_to="bounds",
    forget=False,
)

flutter_tongue = evans.ArticulationHandler(
    ["tremolo"],
    forget=False,
)


def hide_tuplet(selections):
    for tuplet in abjad.select(selections).components(abjad.Tuplet):
        if tuplet.multiplier == abjad.Multiplier(1, 1):
            tuplet.hide = True


slap_articulation_handler = evans.ArticulationHandler(
    ["snappizzicato"],
    forget=False,
    name="snap pizz",
)

warble_dynamics_08 = evans.DynamicHandler(
    dynamic_list=["mf", "f", "mf", "mp", "f", "mf"],
    flare_boolean_vector=[0, 1, 0],
    flare_forget=False,
    hold_last_boolean_vector=[0, 1],
    hold_last_forget=False,
    forget=False,
    name="warble dynamics",
)

slap_dynamics_08 = evans.DynamicHandler(
    dynamic_list=["mp", "ff", "f", "ff", "mf"],
    hold_first_boolean_vector=[1],
    hold_first_forget=False,
    forget=False,
    name="slap dynamics",
)

squeal_dynamics = evans.DynamicHandler(
    dynamic_list=["p", "fff"],
    forget=False,
    name="squeal dynamics",
)

final_fingering_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

seed(0)

shuffle(final_fingering_numbers)

final_fingerings = [abjad.ColorFingering(_) for _ in final_fingering_numbers]

final_warble_fingerings = WarbleFingerings(fingerings_list=final_fingerings)
