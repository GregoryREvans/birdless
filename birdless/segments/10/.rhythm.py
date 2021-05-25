import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'note_rhythm_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
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
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
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