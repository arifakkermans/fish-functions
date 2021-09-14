function google
	set -l res "https://www.google.com/search?client=firefox-b-d&q="
    open $res(echo $argv | string replace --all ' ' '%20')
end
