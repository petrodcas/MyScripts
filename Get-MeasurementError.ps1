param (
    [Parameter(ValueFromPipelineByPropertyName)][double]$RealMeasure,
    [Parameter(ValueFromPipelineByPropertyName)][double]$DesignMeasure
)

process {
    [double]$PercentError = $RealMeasure * 100 / $DesignMeasure

    "{0}%" -f $($PercentError - 100)
}
