function lol{
    <#
    .SYNOPSIS
    
    .DESCRIPTION

    .PARAMETER CollectionMethod
     
    .PARAMETER Stealth

    .PARAMETER Domain
    #>

    param(
        [String[]]
        $CollectionMethod = [string[]] @('Default'),

		[Switch]
        $Stealth,

        [String]
        $Domain,

		[Switch]
        $WindowsOnly,

		[String]
        $ComputerFile,

		[ValidateScript({ Test-Path -Path $_ })]
        [String]
        $OutputDirectory = $(Get-Location),

		[ValidateNotNullOrEmpty()]
        [String]
        $OutputPrefix,

		[Switch]
        $PrettyJson,

		[String]
        $CacheFileName,

		[Switch]
        $RandomizeFilenames,

		[String]
        $ZipFilename,

		[Switch]
        $NoSaveCache,

		[Switch]
        $EncryptZip,

		[Switch]
        $InvalidateCache,

        [String]
        $LdapFilter,

		[string]
        $DomainController,

		[int]
        $LdapPort,

        [Switch]
        $SecureLdap,

		[Switch]
        $DisableKerbSigning,
        
		[String]
        $LdapUsername,

        [String]
        $LdapPassword,

		[Switch]
        $SkipPortScan,

		[ValidateRange(50,5000)]
        [int]
        $PortScanTimeout = 2000,

        [Switch]
        $ExcludeDomainControllers,

		[ValidateRange(0,100)]
        [int]
        $Jitter,

        [int]
        $Throttle,
        
		[String]
        $OverrideUsername,

		[Switch]
		$NoRegistryLoggedOn,

		[Switch]
		$DumpComputerStatus,

		[String]
		$RealDNSName,

		[Switch]
		$CollectAllProperties,

		[ValidateRange(500,60000)]
        [int]
        $StatusInterval,

		[Switch]
		$Loop,

		[String]
		$LoopDuration,

		[String]
		$LoopInterval,

        [String]
        $SearchBase
        
    )

    $vars = New-Object System.Collections.Generic.List[System.Object]

    $vars.Add("-c")
    foreach ($cmethod in $CollectionMethod){
        $vars.Add($cmethod);
    }
    
    if ($Domain){
        $vars.Add("--Domain");
        $vars.Add($Domain);
    }

    if ($Stealth){
        $vars.Add("--Stealth")
    }

	if ($WindowsOnly){
		$vars.Add("--WindowsOnly")
	}

	if ($ComputerFile){
        $vars.Add("--ComputerFile");
        $vars.Add($ComputerFile);
    }

	if ($OutputDirectory){
        $vars.Add("--OutputDirectory");
        $vars.Add($OutputDirectory);
    }

    if ($OutputPrefix){
        $vars.Add("--OutputPrefix");
        $vars.Add($OutputPrefix);
    }

	if ($PrettyJson){
        $vars.Add("--PrettyJson");
    }

	if ($CacheFileName){
        $vars.Add("--CacheFileName");
        $vars.Add($CacheFileName);
    }

	 if ($RandomFilenames){
        $vars.Add("--RandomizeFilenames");
    }

	if ($ZipFileName){
        $vars.Add("--ZipFileName");
        $vars.Add($ZipFileName);
    }

	if ($NoSaveCache){
        $vars.Add("--NoSaveCache");
    }

	if ($EncryptZip){
        $vars.Add("--EncryptZip");
    }

	if ($NoZip){
        $vars.Add("--NoZip");
    }

	if ($InvalidateCache){
        $vars.Add("--InvalidateCache");
    }

	if ($LdapFilter){
        $vars.Add("--LdapFilter");
        $vars.Add($LdapFilter);
    }

	if ($DomainController){
        $vars.Add("--DomainController");
        $vars.Add($DomainController);
    }

    if ($LdapPort){
        $vars.Add("--LdapPort");
        $vars.Add($LdapPort);
    }

    if ($SecureLdap){
        $vars.Add("--SecureLdap");
    }

	if ($DisableKerberosSigning){
        $vars.Add("--DisableKerberosSigning");
    }

	if ($LdapUsername){
        $vars.Add("--LdapUsername");
        $vars.Add($LdapUsername);
    }

    if ($LdapPassword){
        $vars.Add("--LdapPassword");
        $vars.Add($LdapPassword);
    }

	if ($SkipPortScan){
        $vars.Add("--SkipPortScan");
    }

	if ($PortScanTimeout){
        $vars.Add("--PortScanTimeout")
        $vars.Add($PortScanTimeout)
    }


    if ($ExcludeDomainControllers){
        $vars.Add("--ExcludeDomainControllers")
    }

	if ($Throttle){
        $vars.Add("--Throttle");
        $vars.Add($Throttle);
    }

    if ($Jitter){
        $vars.Add("--Jitter");
        $vars.Add($Jitter);
    }

	if ($OverrideUserName){
        $vars.Add("--OverrideUserName")
        $vars.Add($OverrideUsername)
    }
    
	if ($NoRegistryLoggedOn){
		$vars.Add("--NoRegistryLoggedOn")
	}

	if ($DumpComputerStatus){
		$vars.Add("--DumpComputerStatus")
	}

	if ($RealDNSName){
		$vars.Add("--RealDNSName")
		$vars.Add($RealDNSName)
	}

	if ($CollectAllProperties){
		$vars.Add("--CollectAllProperties")
	}
    
	if ($StatusInterval){
        $vars.Add("--StatusInterval")
        $vars.Add($StatusInterval)
    }

	if ($Loop){
		$vars.Add("--Loop")
	}

	if ($LoopDuration){
		$vars.Add("--LoopDuration")
		$vars.Add($LoopDuration)
	}

	if ($LoopInterval){
		$vars.Add("--LoopInterval")
		$vars.Add($LoopInterval)
	}

    if ($SearchBase){
        $vars.Add("--SearchBase")
        $vars.Add($SearchBase)
	}


	
}
