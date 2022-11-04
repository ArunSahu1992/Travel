$path = "C:\BussinessAPI"
If(!(test-path -PathType container $path))
{
      New-Item -ItemType Directory -Path $path
      Start-IISCommitDelay
      $TestSite = New-IISSite -Name BussinessAPI -BindingInformation "*:8121:" -PhysicalPath "C:\BussinessAPI" -Passthru
      $TestSite.Applications["/"].ApplicationPoolName = "ICM UI Website C7SP8"
      Stop-IISCommitDelay
}
