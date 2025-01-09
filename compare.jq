#!/usr/bin/env jq
split("\n") as $original_arr
    | $original_arr
    | map(sub("^v"; "") | select(test("^[0-9]+(\\.[0-9]+)*$")))
    | sort_by(split(".") | map(tonumber))
    | last as $highest
    | $original_arr[] | select(sub("^v"; "") == $highest)
