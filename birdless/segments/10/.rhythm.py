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
                                ('divisions_consumed', 6),
                                ('logical_ties_produced', 6),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'sub_tone_rhythm_handler',
            dict(
                [
                    (
                        'state',
                        dict(
                            [
                                ('divisions_consumed', 3),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 6),
                                ('talea_weight_consumed', 39),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )