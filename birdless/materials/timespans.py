import abjad
import evans
import tsmakers
from abjadext import rmakers

from birdless.materials.instruments import instruments
from birdless.materials.material_patterns import (
    articulation_materials_04,
    articulation_materials_06,
    articulation_materials_08,
    articulation_materials_09,
    articulation_materials_11,
    dynamic_materials_08,
    dynamic_materials_10,
    pitch_materials_01,
    pitch_materials_02,
    pitch_materials_03,
    pitch_materials_04,
    pitch_materials_05,
    pitch_materials_06,
    pitch_materials_07,
    pitch_materials_08,
    pitch_materials_09,
    pitch_materials_10,
    pitch_materials_11,
    pitch_materials_12,
    pitch_materials_13,
    pitch_materials_14,
    rhythm_materials_01,
    rhythm_materials_02,
    rhythm_materials_03,
    rhythm_materials_04,
    rhythm_materials_05,
    rhythm_materials_06,
    rhythm_materials_07,
    rhythm_materials_08,
    rhythm_materials_09,
    rhythm_materials_10,
    rhythm_materials_11,
    rhythm_materials_12,
    rhythm_materials_13,
    rhythm_materials_14,
)
from birdless.materials.time_signatures import (
    bounds_01,
    bounds_02,
    bounds_03,
    bounds_04,
    bounds_05,
    bounds_06,
    bounds_07,
    bounds_08,
    bounds_09,
    bounds_10,
    bounds_11,
    bounds_12,
    bounds_13,
    bounds_14,
)

music_specifiers = dict([(f"Voice {i+1}", None) for i, name in enumerate(instruments)])

voice_names = [specifier for specifier in music_specifiers]

# #######
# rhythm#
# #######

# # 01


timespan_list_01 = abjad.TimespanList(
    [
        tsmakers.PerformedTimespan(0, (4, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((4, 4), (7, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((7, 4), (31, 12), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((31, 12), (43, 12), voice_name="Voice 1"),
    ]
)

cyc_rhythm_materials_01 = evans.CyclicList(rhythm_materials_01, forget=False)

for voice in voice_names:
    for span in timespan_list_01:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_01(r=1)[0]

rhythm_timespans_01 = evans.timespan.make_split_list(timespan_list_01, bounds_01)

rhythm_commands_01 = []
for span in rhythm_timespans_01:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_01.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_01)

# # 02

target_timespan_02 = abjad.Timespan(0, (18, 8))

timespan_maker_02 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=([7, 6, 5]),
        denominator=8,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_02 = timespan_maker_02(
    music_specifiers=music_specifiers, target_timespan=target_timespan_02
)

cyc_rhythm_materials_02 = evans.CyclicList(rhythm_materials_02, forget=False)

for voice in voice_names:
    for span in timespan_list_02:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_02(r=1)[0]

rhythm_timespans_02 = evans.timespan.make_split_list(timespan_list_02, bounds_02)

rhythm_commands_02 = []
for span in rhythm_timespans_02:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_02.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_02)

# # 03

target_timespan_03 = abjad.Timespan(0, (53, 8))

timespan_maker_03 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                8,
                6,
                8,
                4,
                8,
                2,
                9,
                8,
            ]
        ),
        denominator=8,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_03 = timespan_maker_03(
    music_specifiers=music_specifiers, target_timespan=target_timespan_03
)

cyc_rhythm_materials_03 = evans.CyclicList(rhythm_materials_03, forget=False)

for voice in voice_names:
    for span in timespan_list_03:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_03(r=1)[0]

rhythm_timespans_03 = evans.timespan.make_split_list(timespan_list_03, bounds_03)

rhythm_commands_03 = []
for span in rhythm_timespans_03:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_03.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_03)

# # 04

target_timespan_04 = abjad.Timespan(0, (105, 8))

timespan_maker_04 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                12,
                14,
                10,
                16,
                7,
                6,
                14,
                6,
                5,
                8,
                4,
                3,
            ]
        ),
        denominator=8,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_04 = timespan_maker_04(
    music_specifiers=music_specifiers, target_timespan=target_timespan_04
)

cyc_rhythm_materials_04 = evans.CyclicList(rhythm_materials_04, forget=False)

for voice in voice_names:
    for span in timespan_list_04:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_04(r=1)[0]

rhythm_timespans_04 = evans.timespan.make_split_list(timespan_list_04, bounds_04)

rhythm_commands_04 = []
for span in rhythm_timespans_04:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_04.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_04)

# # 05

target_timespan_05 = abjad.Timespan(0, (39, 8))

timespan_maker_05 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                39,
            ]
        ),
        denominator=8,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_05 = timespan_maker_05(
    music_specifiers=music_specifiers, target_timespan=target_timespan_05
)

cyc_rhythm_materials_05 = evans.CyclicList(rhythm_materials_05, forget=False)

for voice in voice_names:
    for span in timespan_list_05:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_05(r=1)[0]

rhythm_timespans_05 = evans.timespan.make_split_list(timespan_list_05, bounds_05)

rhythm_commands_05 = []
for span in rhythm_timespans_05:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_05.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_05)

# # 06

target_timespan_06 = abjad.Timespan(0, (41, 4))

timespan_maker_06 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                6,
                7,
                4,
                5,
                8,
                4,
                3,
                4,
            ]
        ),
        denominator=4,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_06 = timespan_maker_06(
    music_specifiers=music_specifiers, target_timespan=target_timespan_06
)

cyc_rhythm_materials_06 = evans.CyclicList(rhythm_materials_06, forget=False)

for voice in voice_names:
    for span in timespan_list_06:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_06(r=1)[0]

rhythm_timespans_06 = evans.timespan.make_split_list(timespan_list_06, bounds_06)

rhythm_commands_06 = []
for span in rhythm_timespans_06:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_06.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_06)

# # 07

target_timespan_07 = abjad.Timespan(0, (65, 8))

timespan_maker_07 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                12,
                9,
                7,
                6,
                5,
                4,
                4,
                5,
                6,
                7,
            ]
        ),
        denominator=8,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_07 = timespan_maker_07(
    music_specifiers=music_specifiers, target_timespan=target_timespan_07
)

cyc_rhythm_materials_07 = evans.CyclicList(rhythm_materials_07, forget=False)

for voice in voice_names:
    for span in timespan_list_07:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_07(r=1)[0]

rhythm_timespans_07 = evans.timespan.make_split_list(timespan_list_07, bounds_07)

rhythm_commands_07 = []
for span in rhythm_timespans_07:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_07.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_07)


# # 08

timespan_list_08 = abjad.TimespanList(
    [
        tsmakers.PerformedTimespan(0, (2, 1), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((2, 1), (15, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((15, 4), (21, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((21, 4), (13, 2), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((13, 2), (22, 3), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((22, 3), (25, 3), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((25, 3), (109, 12), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((109, 12), (121, 12), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((121, 12), (65, 6), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((65, 6), (23, 2), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((23, 2), (12, 1), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((12, 1), (55, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((55, 4), (61, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((61, 4), (33, 2), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((33, 2), (103, 6), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((103, 6), (18, 1), voice_name="Voice 1"),
    ]
)

cyc_rhythm_materials_08 = evans.CyclicList(rhythm_materials_08, forget=False)

for voice in voice_names:
    for span in timespan_list_08:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_08(r=1)[0]

rhythm_timespans_08 = evans.timespan.make_split_list(timespan_list_08, bounds_08)

rhythm_commands_08 = []
for span in rhythm_timespans_08:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_08.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_08)

# # 09

timespan_list_09 = abjad.TimespanList(
    [
        tsmakers.PerformedTimespan(0, (5, 6), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((5, 6), (3, 2), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((3, 2), (2, 1), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((2, 1), (8, 3), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((8, 3), (7, 2), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((7, 2), (17, 4), voice_name="Voice 1"),
    ]
)

cyc_rhythm_materials_09 = evans.CyclicList(rhythm_materials_09, forget=False)

for voice in voice_names:
    for span in timespan_list_09:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_09(r=1)[0]

rhythm_timespans_09 = evans.timespan.make_split_list(timespan_list_09, bounds_09)

rhythm_commands_09 = []
for span in rhythm_timespans_09:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_09.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_09)

# # 10

target_timespan_10 = abjad.Timespan(0, (111, 16))

timespan_maker_10 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                72,
                39,
            ]
        ),
        denominator=16,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_10 = timespan_maker_10(
    music_specifiers=music_specifiers, target_timespan=target_timespan_10
)

cyc_rhythm_materials_10 = evans.CyclicList(rhythm_materials_10, forget=False)

for voice in voice_names:
    for span in timespan_list_10:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_10(r=1)[0]

rhythm_timespans_10 = evans.timespan.make_split_list(timespan_list_10, bounds_10)

rhythm_commands_10 = []
for span in rhythm_timespans_10:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_10.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_10)

# # 11

timespan_list_11 = abjad.TimespanList(
    [
        tsmakers.PerformedTimespan(0, (1, 1), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((1, 1), (11, 6), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((11, 6), (17, 6), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((17, 6), (43, 12), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((43, 12), (17, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((17, 4), (21, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((21, 4), (6, 1), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((6, 1), (13, 2), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((13, 2), (7, 1), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((7, 1), (8, 1), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((8, 1), (35, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((35, 4), (37, 4), voice_name="Voice 1"),
        tsmakers.PerformedTimespan((37, 4), (19, 2), voice_name="Voice 1"),
    ]
)

cyc_rhythm_materials_11 = evans.CyclicList(rhythm_materials_11, forget=False)

for voice in voice_names:
    for span in timespan_list_11:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_11(r=1)[0]

rhythm_timespans_11 = evans.timespan.make_split_list(timespan_list_11, bounds_11)

rhythm_commands_11 = []
for span in rhythm_timespans_11:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_11.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_11)

# # 12

target_timespan_12 = abjad.Timespan(0, (90, 8))

timespan_maker_12 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                66,
                24,
            ]
        ),
        denominator=8,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_12 = timespan_maker_12(
    music_specifiers=music_specifiers, target_timespan=target_timespan_12
)

cyc_rhythm_materials_12 = evans.CyclicList(rhythm_materials_12, forget=False)

for voice in voice_names:
    for span in timespan_list_12:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_12(r=1)[0]

rhythm_timespans_12 = evans.timespan.make_split_list(timespan_list_12, bounds_12)

rhythm_commands_12 = []
for span in rhythm_timespans_12:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_12.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_12)

# # 13

target_timespan_13 = abjad.Timespan(0, (13, 8))

timespan_maker_13 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=([13]),
        denominator=8,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_13 = timespan_maker_13(
    music_specifiers=music_specifiers, target_timespan=target_timespan_13
)

cyc_rhythm_materials_13 = evans.CyclicList(rhythm_materials_13, forget=False)

for voice in voice_names:
    for span in timespan_list_13:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_13(r=1)[0]

rhythm_timespans_13 = evans.timespan.make_split_list(timespan_list_13, bounds_13)

rhythm_commands_13 = []
for span in rhythm_timespans_13:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_13.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_13)

# # 14

target_timespan_14 = abjad.Timespan(0, (51, 4))

timespan_maker_14 = tsmakers.TaleaTimespanMaker(
    initial_silence_talea=rmakers.Talea(counts=([0]), denominator=4),
    playing_talea=rmakers.Talea(
        counts=(
            [
                3,
                9,
                3,
                4,
                3,
                4,
                3,
                4,
                1,
                1,
                4,
                3,
                3,
                1,
                1,
                3,
                1,
            ]
        ),
        denominator=4,
    ),
    playing_groupings=([1]),
    silence_talea=rmakers.Talea(counts=([0]), denominator=4),
)

timespan_list_14 = timespan_maker_14(
    music_specifiers=music_specifiers, target_timespan=target_timespan_14
)

cyc_rhythm_materials_14 = evans.CyclicList(rhythm_materials_14, forget=False)

for voice in voice_names:
    for span in timespan_list_14:
        if span.voice_name == voice:
            span._handler = cyc_rhythm_materials_14(r=1)[0]

rhythm_timespans_14 = evans.timespan.make_split_list(timespan_list_14, bounds_14)

rhythm_commands_14 = []
for span in rhythm_timespans_14:
    r_command = evans.RhythmCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span.handler,
    )
    rhythm_commands_14.append(r_command)

evans.timespan.intercalate_silences(rhythm_commands_14)

# #######
# handlers#
# #######

# # 01

# # pitch

cyc_pitch_materials_01 = evans.CyclicList(pitch_materials_01, forget=False)

for voice in voice_names:
    for span in timespan_list_01:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_01(r=1)[0]

pitch_commands_01 = []
for span in timespan_list_01:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_01.append(h_command)

# # 02

# # pitch

cyc_pitch_materials_02 = evans.CyclicList(pitch_materials_02, forget=False)

for voice in voice_names:
    for span in timespan_list_02:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_02(r=1)[0]

pitch_commands_02 = []
for span in timespan_list_02:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_02.append(h_command)

# # 03

# # pitch

cyc_pitch_materials_03 = evans.CyclicList(pitch_materials_03, forget=False)

for voice in voice_names:
    for span in timespan_list_03:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_03(r=1)[0]

pitch_commands_03 = []
for span in timespan_list_03:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_03.append(h_command)

# # 04

# # pitch

cyc_pitch_materials_04 = evans.CyclicList(pitch_materials_04, forget=False)

for voice in voice_names:
    for span in timespan_list_04:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_04(r=1)[0]

pitch_commands_04 = []
for span in timespan_list_04:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_04.append(h_command)

# # articulation

cyc_articulation_materials_04 = evans.CyclicList(
    articulation_materials_04, forget=False
)

for voice in voice_names:
    for span in timespan_list_04:
        if span.voice_name == voice:
            span._handler = cyc_articulation_materials_04(r=1)[0]

articulation_commands_04 = []
for span in timespan_list_04:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        articulation_commands_04.append(h_command)

# # 05

# # pitch

cyc_pitch_materials_05 = evans.CyclicList(pitch_materials_05, forget=False)

for voice in voice_names:
    for span in timespan_list_05:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_05(r=1)[0]

pitch_commands_05 = []
for span in timespan_list_05:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_05.append(h_command)

# # 06

# # pitch

cyc_pitch_materials_06 = evans.CyclicList(pitch_materials_06, forget=False)

for voice in voice_names:
    for span in timespan_list_06:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_06(r=1)[0]

pitch_commands_06 = []
for span in timespan_list_06:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_06.append(h_command)

# # articulation

cyc_articulation_materials_06 = evans.CyclicList(
    articulation_materials_06, forget=False
)

for voice in voice_names:
    for span in timespan_list_06:
        if span.voice_name == voice:
            span._handler = cyc_articulation_materials_06(r=1)[0]

articulation_commands_06 = []
for span in timespan_list_06:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        articulation_commands_06.append(h_command)

# # 07

# # pitch

cyc_pitch_materials_07 = evans.CyclicList(pitch_materials_07, forget=False)

for voice in voice_names:
    for span in timespan_list_07:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_07(r=1)[0]

pitch_commands_07 = []
for span in timespan_list_07:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_07.append(h_command)

# # 08

# # pitch

cyc_pitch_materials_08 = evans.CyclicList(pitch_materials_08, forget=False)

for voice in voice_names:
    for span in timespan_list_08:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_08(r=1)[0]

pitch_commands_08 = []
for span in timespan_list_08:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_08.append(h_command)

# # articulation

cyc_articulation_materials_08 = evans.CyclicList(
    articulation_materials_08, forget=False
)

for voice in voice_names:
    for span in timespan_list_08:
        if span.voice_name == voice:
            span._handler = cyc_articulation_materials_08(r=1)[0]

articulation_commands_08 = []
for span in timespan_list_08:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        articulation_commands_08.append(h_command)

# # dynamic

cyc_dynamic_materials_08 = evans.CyclicList(dynamic_materials_08, forget=False)

for voice in voice_names:
    for span in timespan_list_08:
        if span.voice_name == voice:
            span._handler = cyc_dynamic_materials_08(r=1)[0]

dynamic_commands_08 = []
for span in timespan_list_08:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        dynamic_commands_08.append(h_command)

# # 09

# # pitch

cyc_pitch_materials_09 = evans.CyclicList(pitch_materials_09, forget=False)

for voice in voice_names:
    for span in timespan_list_09:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_09(r=1)[0]

pitch_commands_09 = []
for span in timespan_list_09:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_09.append(h_command)

# # articulation

cyc_articulation_materials_09 = evans.CyclicList(
    articulation_materials_09, forget=False
)

for voice in voice_names:
    for span in timespan_list_09:
        if span.voice_name == voice:
            span._handler = cyc_articulation_materials_09(r=1)[0]

articulation_commands_09 = []
for span in timespan_list_09:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        articulation_commands_09.append(h_command)

# # 10

# # pitch

cyc_pitch_materials_10 = evans.CyclicList(pitch_materials_10, forget=False)

for voice in voice_names:
    for span in timespan_list_10:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_10(r=1)[0]

pitch_commands_10 = []
for span in timespan_list_10:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_10.append(h_command)

# # dynamic

cyc_dynamic_materials_10 = evans.CyclicList(dynamic_materials_10, forget=False)

for voice in voice_names:
    for span in timespan_list_10:
        if span.voice_name == voice:
            span._handler = cyc_dynamic_materials_10(r=1)[0]

dynamic_commands_10 = []
for span in timespan_list_10:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        dynamic_commands_10.append(h_command)

# # 11

# # pitch

cyc_pitch_materials_11 = evans.CyclicList(pitch_materials_11, forget=False)

for voice in voice_names:
    for span in timespan_list_11:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_11(r=1)[0]

pitch_commands_11 = []
for span in timespan_list_11:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_11.append(h_command)

# # articulation

cyc_articulation_materials_11 = evans.CyclicList(
    articulation_materials_11, forget=False
)

for voice in voice_names:
    for span in timespan_list_11:
        if span.voice_name == voice:
            span._handler = cyc_articulation_materials_11(r=1)[0]

articulation_commands_11 = []
for span in timespan_list_11:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        articulation_commands_11.append(h_command)

# # 12

# # pitch

cyc_pitch_materials_12 = evans.CyclicList(pitch_materials_12, forget=False)

for voice in voice_names:
    for span in timespan_list_12:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_12(r=1)[0]

pitch_commands_12 = []
for span in timespan_list_12:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_12.append(h_command)

# # 13

# # pitch

cyc_pitch_materials_13 = evans.CyclicList(pitch_materials_13, forget=False)

for voice in voice_names:
    for span in timespan_list_13:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_13(r=1)[0]

pitch_commands_13 = []
for span in timespan_list_13:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_13.append(h_command)

# # 14

# # pitch

cyc_pitch_materials_14 = evans.CyclicList(pitch_materials_14, forget=False)

for voice in voice_names:
    for span in timespan_list_14:
        if span.voice_name == voice:
            span._handler = cyc_pitch_materials_14(r=1)[0]

pitch_commands_14 = []
for span in timespan_list_14:
    h_command = evans.HandlerCommand(
        voice_name=span.voice_name,
        timespan=abjad.Timespan(span.start_offset, span.stop_offset),
        handler=span._handler,
    )
    if h_command.handler.name == "silence_handler":
        continue
    else:
        pitch_commands_14.append(h_command)

# # collected handlers

handler_commands_01 = [pitch_commands_01]

handler_commands_02 = [pitch_commands_02]

handler_commands_03 = [pitch_commands_03]

handler_commands_04 = [pitch_commands_04, articulation_commands_04]

handler_commands_05 = [pitch_commands_05]

handler_commands_06 = [pitch_commands_06, articulation_commands_06]

handler_commands_07 = [pitch_commands_07]

handler_commands_08 = [pitch_commands_08, articulation_commands_08, dynamic_commands_08]

handler_commands_09 = [pitch_commands_09, articulation_commands_09]

handler_commands_10 = [pitch_commands_10, dynamic_commands_10]

handler_commands_11 = [pitch_commands_11, articulation_commands_11]

handler_commands_12 = [pitch_commands_12]

handler_commands_13 = [pitch_commands_13]

handler_commands_14 = [pitch_commands_14]
