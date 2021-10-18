param (
         
         <#
        [Parameter(Mandatory=$true)]
        [string] 
        $RGName,

        [Parameter(Mandatory=$true)]
        [string] 
        $CacheName,

        [parameter(Mandatory=$true)]
        [PSCredential] $Creds
        #>

        
)


Write-Output "Hello World 10"
<#
$CacheUrl = $CacheName + ".redis.cache.windows.net"
$AccessKey = $Creds.GetNetworkCredential().Password

Connect-AzAccount -Identity -ErrorAction stop -WarningAction SilentlyContinue | Out-Null

Set-AzRedisCache -ResourceGroupName $RGName -Name $CacheName -EnableNonSslPort $true
Invoke-Command -ScriptBlock { cd "C:\Program Files\Redis" }
Invoke-Command -ScriptBlock { .\redis-cli.exe -h $CacheUrl -p 6379 -a $AccessKey flushall }
Set-AzRedisCache -ResourceGroupName $RGName -Name $CacheName -EnableNonSslPort $false
#>
