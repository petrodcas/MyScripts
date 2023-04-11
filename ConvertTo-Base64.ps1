param(
    [Parameter(ValueFromRemainingArguments, ValueFromPipeline)]
    [string]$s
)

process {
    [System.Convert]::ToBase64String([System.Text.Encoding]::Utf8.GetBytes($s))
}