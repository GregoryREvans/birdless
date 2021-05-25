import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'Pitch Handler',
            abjad.OrderedDict(
                [
                    ('pitch_count', 48),
                    ('chord_boolean_count', -1),
                    ('chord_groups_count', -1),
                    ]
                ),
            ),
        (
            'flourish_pitch_handler',
            abjad.OrderedDict(
                [
                    ('pitch_count', 15),
                    ('chord_boolean_count', -1),
                    ('chord_groups_count', -1),
                    ]
                ),
            ),
        (
            'squeal dynamics',
            abjad.OrderedDict(
                [
                    ('count_1', 1),
                    ('count_2', 0),
                    ('count_3', 0),
                    ('count_4', 0),
                    ('count_5', 1),
                    ]
                ),
            ),
        ]
    )