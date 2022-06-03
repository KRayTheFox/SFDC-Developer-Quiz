param([string] $orgName, [int] $duration, [boolean]$debugMode)

if (!$orgName) {
    $orgName = "quizscratch";
	Write-Host -ForegroundColor red "You must specify an org name"
	exit 1
}

if (!$duration) {
    $duration = "30";
	Write-Host -ForegroundColor red "You must specify a duration (1-30)"
	exit 1
}


# Delete Scratch Org - to avoid hitting scratch org count limit
Write-Host -ForegroundColor green "Deleting scratch org: $orgName..."
& sfdx force:org:delete -u $orgName -p

# Create Scratch Org
Write-Host -ForegroundColor green "Creating scratch org: $orgName..."
& sfdx force:org:create -a $orgName -d $duration -f config\project-scratch-def.json
if ($LASTEXITCODE -ne 0) {
	exit 1 
}
Write-Host ""

# Deploy source to scratch org
Write-Host -ForegroundColor green "Deploying source to scratch org..."
& sfdx force:source:push -u $orgName
if ($LASTEXITCODE -ne 0) {
	exit 1
}
Write-Host ""


# Assign mhub Admin permission set
Write-Host -ForegroundColor green "Assigning Admin permission set..."
& sfdx force:user:permset:assign --permsetname MHUB_Admin -u $orgName
if ($LASTEXITCODE -ne 0) {
	exit 1
}
Write-Host ""

# Populate test data
Write-Host -ForegroundColor green "Creating test data..."
& sfdx force:apex:execute -u $orgName -f ./scripts/apex/setupData.apex
if ($LASTEXITCODE -ne 0) {
	exit 1
}
Write-Host "" 

if ($debugMode) {
	# Set debug mode = true
	Write-Host -ForegroundColor green "Set debug mode..."
	& Write-Output "update new User(Id = UserInfo.getUserId(), UserPreferencesUserDebugModePref=true);" | sfdx force:apex:execute -u $orgName
	if ($LASTEXITCODE -ne 0) {
		exit 1
	}	
}
Write-Host ""

# Done
Write-Host -ForegroundColor green "Scratch org setup complete."
