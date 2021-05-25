all-keys-markup = \markup
{
    \center-column
    {
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five six))
            (lh . (T ees d f front-f bes gis cis b low-bes))
            (rh . (e c bes high-fis fis ees low-c)))
    }
}

diagram-one-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five six))
            (lh . (low-bes))
            (rh . ()))
    }
}

diagram-two-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five six))
            (lh . (low-bes))
            (rh . (ees low-c)))
    }
}

diagram-three-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five six))
            (lh . (b))
            (rh . (ees low-c)))
    }
}

diagram-four-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five))
            (lh . (low-bes))
            (rh . ()))
    }
}

diagram-five-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five))
            (lh . (low-bes))
            (rh . (low-c)))
    }
}

diagram-ix-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four six))
            (lh . (b))
            (rh . (low-c)))
    }
}

diagram-even-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five))
            (lh . ())
            (rh . (low-c)))
    }
}

diagram-eight-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three five six))
            (lh . ())
            (rh . (low-c)))
    }
}

diagram-nine-span-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two four five six))
            (lh . (low-bes))
            (rh . (low-c)))
    }
}

diagram-ten-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two four five six))
            (lh . (low-bes))
            (rh . ()))
    }
}

diagram-eleven-markup = \markup {
	\center-column
	{
		\override #'(size . 0.5)
			\woodwind-diagram
		#'alto-saxophone
		#'(
			(cc . (one two three five six))
				(lh . ())
				(rh . (low-c)))
	}
}

diagram-eleven-span-markup = \markup {
    \override #'(size . 0.5)
		\woodwind-diagram
		#'alto-saxophone
		#'(
			(cc . (one two three five six))
				(lh . ())
				(rh . (low-c)))
    }

diagram-twelve-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (two three five six))
            (lh . (cis))
            (rh . (low-c)))
    }
}

diagram-thirteen-markup = \markup {
    \center-column
    {
    	\override #'(size . 0.5)
    		\woodwind-diagram
    	#'alto-saxophone
    	#'(
    		(cc . (one two three))
    			(lh . (d gis))
    			(rh . ()))
    }
}

diagram-fourteen-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (two three))
            (lh . (d))
            (rh . ()))
    }
}

diagram-fifteen-markup = \markup {
    \center-column
    {
        \override #'(size . 0.5)
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three))
            (lh . (ees d gis))
            (rh . ()))
    }
}

% direction = down
colophon = \markup
{
    \override #'(font-name . "STIXGeneral")
    \with-color #white
    \right-column
    {
        \line
        {
            "\hspace #0.75 ............"
        }
        \with-color #black
        \line
        {
            Iowa City, Ia.
        }
        \with-color #black
        \line
        {
            \hspace #0.75 May 2021
        }
    }
}

teeth-on-reed-markup = \markup \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "teeth on reed"

normale-markup = \markup \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "normale"

sub-tone-markup = \markup \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "sub tone"
