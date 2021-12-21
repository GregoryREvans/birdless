import abjad
handler_to_value = dict(
    [
        (
            'note_rhythm_handler',
            dict(
                [
                    (
                        'state',
                        dict(
                            [
                                ('divisions_consumed', 1),
                                ('logical_ties_produced', 1),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'slap_rhythm_handler',
            dict(
                [
                    ('state', 0),
                    ]
                ),
            ),
        ]
    )