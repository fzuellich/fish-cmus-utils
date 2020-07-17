function cmus-toggle-play --description "Toggle between playing and pausing."
    set -l playing (cmus-remote -Q | grep status | cut -d ' ' -f 2)

    if test "$playing" = "playing"
        cmus-remote --pause-playback
    else
        cmus-remote --play
    end
end
