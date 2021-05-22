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

% <d' ctqs'' as'' ds''' fs'''>
% ff

diagram-one-markup = \markup {
    \center-column
    {
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five six))
            (lh . (low-bes))
            (rh . ()))
    }
}

% <dqs' dqs'' fqs'' b'' dtqs'''>
% ff

diagram-two-markup = \markup {
    \center-column
    {
        \woodwind-diagram
        #'alto-saxophone
        #'(
            (cc . (one two three four five six))
            (lh . (b))
            (rh . (ees low-c)))
    }
}

% <fqs' e'' bqs''>
% p

diagram-three-markup = \markup {
	\center-column
	{
			\woodwind-diagram
		#'alto-saxophone
		#'(
			(cc . (one two three four five))
				(lh . (low-bes))
				(rh . ()))
	}
}

diagram-eleven-markup = ^ \markup {
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

diagram-thirteen-markup = ^ \markup {
    \center-column
    {
    	\override #'(size . 0.5)
    		\woodwind-diagram
    	#'alto-saxophone
    	#'(
    		(cc . (one two three))
    			(lh . (gis))
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
            Panama City Beach, Fl. \hspace #0.75 - \hspace #0.75 Spring Valley, Oh.
        }
        \with-color #black
        \line
        {
            \hspace #0.75 March 2021
        }
    }
}

teeth-on-reed-markup = \markup \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "teeth on reed"

normale-markup = \markup \override #'(style . "box") \override #'(box-padding . 0.5) \italic \box \whiteout \small "normale"
