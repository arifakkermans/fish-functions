function clone-repo --argument repo profile
    git clone codecommit::eu-central-1://$profile@$repo
	set -l res (read -n 1 -P (set_color green)"cd $repo? (y/"(set_color -o brgreen)"N"(set_color normal)(set_color green)"): "(set_color normal))
	if test "$res" = "y"
		cd $repo
		return
	end
end
