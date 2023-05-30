param([AllowNull()][Parameter(ValueFromRemainingArguments, Mandatory)][array]$o)
foreach ($i in $o[0..$($o.Length - 2)]) {
    if ($null -ne $i) {
        return $i
    }
}
return $o[-1]