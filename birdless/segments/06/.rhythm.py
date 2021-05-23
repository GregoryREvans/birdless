import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'warble_rhythm_handler',
            abjad.OrderedDict(
                [
                    ('state', 4),
                    ]
                ),
            ),
        (
            'note_rhythm_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 2),
                                ('logical_ties_produced', 2),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )