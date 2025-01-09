
function version_cmp(v1, v2) {
    n = split(v1, a1, /[.]/)
    m = split(v2, a2, /[.]/)
    for (i = 1; i <= (n > m ? n : m); i++) {
        num1 = (i <= n) ? a1[i] : 0
        num2 = (i <= m) ? a2[i] : 0
        if (num1 != num2) return (num1 > num2) ? 1 : -1
    }
    return 0
}

/v?[0-9]+(\.[0-9]+)*/ {
    # Remove leading "v" if present
    version = $0
    sub(/^v/, "", version)

    # If first version or if this version is greater than max_version
    if (!max_version || version_cmp(version, max_version) > 0) {
        max_version = version
        original_version = $0  # Store original for output
    }
}

END {
    print original_version
}