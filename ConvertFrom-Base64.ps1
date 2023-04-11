param(
    [Parameter(ValueFromRemainingArguments, ValueFromPipeline)]
    [string]$s
)

process {
    [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($s))
}