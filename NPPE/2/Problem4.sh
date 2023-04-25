: '
The poem “Sail away” by Rabindranath Tagore is stored in the file named poem.


Early in the day it was whispered that we should sail in a boat,
only thou and I, and never a soul in the world would know of this our
pilgrimage to no country and to no end.

In that shoreless ocean,
at thy silently listening smile my songs would swell in melodies,
free as waves, free from all bondage of words.

Is the time not come yet?
Are there works still to do?
Lo, the evening has come down upon the shore
and in the fading light the seabirds come flying to their nests.

Who knows when the chains will be off,
and the boat, like the last glimmer of sunset,
vanish into the night?

Write a command to print the number of non-empty lines that do not contain an article (a, an, the) in it. The command should print a number that is the count of lines, and should not print the lines.
'

#Solution:
script() {
grep -e "\ba\b\|\ban\b\|\bthe\b" poem -v | grep -e "\w" | wc -l
}
