import abjad
import evans
from abjadext import rmakers

silence_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
    rmakers.force_rest(abjad.select().leaves(pitched=True)),
)

silence_handler = evans.RhythmHandler(
    rmaker=silence_maker,
    forget=True,
    name="silence_handler",
)

##
##

demo_rhythm_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
)

demo_rhythm_handler = evans.RhythmHandler(
    rmaker=demo_rhythm_maker,
    forget=True,
    name="demo_rhythm_handler",
)
