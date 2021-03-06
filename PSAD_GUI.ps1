Import-Module ActiveDirectory
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$pictureBox1 = New-Object System.Windows.Forms.PictureBox
$createuser = New-Object System.Windows.Forms.TextBox
$createuserval = New-Object System.Windows.Forms.Label
$label1 = New-Object System.Windows.Forms.Label
$fname = New-Object System.Windows.Forms.TextBox
$tfname = New-Object System.Windows.Forms.TextBox
$label2 = New-Object System.Windows.Forms.Label
$val2 = New-Object System.Windows.Forms.Label
$SiteLocate = New-Object System.Windows.Forms.ListBox
$val4 = New-Object System.Windows.Forms.Label
$label4 = New-Object System.Windows.Forms.Label
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

$form1.FormBorderStyle = "Fixed3D"

## MNET Logo
$picturebox1.imagelocation = "logo.jpg"
$picturebox1.sizemode = "Stretch"

## Office Site Locations
$SiteLocate.items.add("Danvers MA")
$SiteLocate.items.add("South Portland ME")
$SiteLocate.items.add("Andover MA")
$SiteLocate.items.add("Auburn MA")
$SiteLocate.items.add("Auburn ME")
$SiteLocate.items.add("Bangor ME")
$SiteLocate.items.add("Bedford NH")
$SiteLocate.items.add("Boston MA")
$SiteLocate.items.add("Braintree MA")
$SiteLocate.items.add("Brighton MA")
$SiteLocate.items.add("Burlington MA")
$SiteLocate.items.add("Center Valley, PA")
$SiteLocate.items.add("Columbia SC")
$SiteLocate.items.add("Conshohocken PA")
$SiteLocate.items.add("Doylestown PA")
$SiteLocate.items.add("Franklin MA")
$SiteLocate.items.add("Freehold NJ")
$SiteLocate.items.add("Freeport ME")
$SiteLocate.items.add("Haverhill MA")
$SiteLocate.items.add("Hilton Head Island SC")
$SiteLocate.items.add("Laconia NH")
$SiteLocate.items.add("Lancaster PA")
$SiteLocate.items.add("Longmeadow MA")
$SiteLocate.items.add("Mansfield MA")
$SiteLocate.items.add("Marblehead MA")
$SiteLocate.items.add("Milford DE")
$SiteLocate.items.add("Moorestown NJ")
$SiteLocate.items.add("Mt Pleasant SC")
$SiteLocate.items.add("Naples ME")
$SiteLocate.items.add("Nashua NH")
$SiteLocate.items.add("North Charleston SC")
$SiteLocate.items.add("Plymouth MA")
$SiteLocate.items.add("Portland ME")
$SiteLocate.items.add("Portsmouth NH 1")
$SiteLocate.items.add("Portsmouth NH 2")
$SiteLocate.items.add("Providence RI")
$SiteLocate.items.add("Salem NH")
$SiteLocate.items.add("Salisbury MD")
$SiteLocate.items.add("Wall NJ")
$SiteLocate.items.add("Waltham MA")
$SiteLocate.items.add("Wellesley MA")
$SiteLocate.items.add("West Chester PA")
$SiteLocate.items.add("West Roxbury MA")
$SiteLocate.items.add("Westford MA")
$SiteLocate.items.add("Whitehall PA")
$SiteLocate.items.add("Wildwood NJ")
$SiteLocate.items.add("Wilmington DE")
$SiteLocate.items.add("York PA")

## Global Variables
[string] $global:NewUser = $null
[string] $global:NewUserids = $null
[string]$global:nfname = $null


## Checking if the new user exist
$global:NewUserids = $createuser.Text
$global:NewUserids = $global:NewUserids.trim( )
$global:NewUser = $global:NewUserids

if ( $global:NewUserids -eq "" ) {$newuserval.Text = "REQUIRED***"}	
elseif (dsquery user -samid $global:NewUserids){$newuserval.Text = "User Exist"}
elseif ($global:NewUserids = "null") {$newuserval.Text = "OK"}

## Checking for First Name Entry
if ( $fname.Text -eq "" ) {$val2.Text = "REQUIRED***"}
elseif ($fname.Text -ne "") {$val2.Text = "OK"}
$global:nfname = $fname.Text
$global:nfname = $global:nfname.trim( )

## Clear All Entries
$clear_OnClick= 
{

$mailboxlist.enabled = $True
$createuser.enabled = $true
$createuserval.Text = ""
$createuser.SelectedIndex = -1
$fname.enabled = $true
$val2.Text = ""
$fname.Text = ""
$SiteLocate.enabled = $true
$val4.Text = ""
$SiteLocate.SelectedIndex = -1
$infodisplay.Text = ""
$pgbar.value = 10
$pgbar.maximum = 100
$clear.visible = $False
$bcopy.visible = $False 

$bvalidate.visible = $True
$mailboxlist.clearSelected()

}

$handler_form1_Load= 
{
## TODO: Place custom script here

}

$OnLoadForm_StateCorrection=
{## Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

##----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 515
$System_Drawing_Size.Width = 534
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Add a New User"
$form1.add_Load($handler_form1_Load)

## Mortgage Network Logo
$pictureBox1.DataBindings.DefaultDataSourceUpdateMode = 0

$pictureBox1.InitialImage = [System.Drawing.Image]::FromFile('logo.jpg')
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 290
$System_Drawing_Point.Y = 425
$pictureBox1.Location = $System_Drawing_Point
$pictureBox1.Name = "pictureBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 49
$System_Drawing_Size.Width = 210
$pictureBox1.Size = $System_Drawing_Size
$pictureBox1.TabIndex = 21
$pictureBox1.TabStop = $False

$form1.Controls.Add($pictureBox1)

## New Username Entry
$label1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 11
$label1.Location = $System_Drawing_Point
$label1.Name = "label1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 19
$System_Drawing_Size.Width = 84
$label1.Size = $System_Drawing_Size
$label1.TabIndex = 6
$label1.Text = "New Username"

$form1.Controls.Add($label1)

$createuser.AutoCompleteMode = 3
$createnewuser.AutoCompleteSource = 256
$createuser.DataBindings.DefaultDataSourceUpdateMode = 0
$createuser.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 128
$System_Drawing_Point.Y = 11
$createuser.Location = $System_Drawing_Point
$createuser.Name = "createuser"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 28
$System_Drawing_Size.Width = 147
$createuser.Size = $System_Drawing_Size
$createuser.TabIndex = 23

$form1.Controls.Add($createuser)

$createuserval.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 290
$System_Drawing_Point.Y = 11
$createuserval.Location = $System_Drawing_Point
$createuserval.Name = "createuserval"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 108
$createuserval.Size = $System_Drawing_Size
$createuserval.TabIndex = 11

$form1.Controls.Add($createuserval)

## First Name Entry
$label2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 40
$label2.Location = $System_Drawing_Point
$label2.Name = "label2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 19
$System_Drawing_Size.Width = 84
$label2.Size = $System_Drawing_Size
$label2.TabIndex = 6
$label2.Text = "First Name"

$form1.Controls.Add($label2)

$fname.AutoCompleteMode = 4
$fname.AutoCompleteSource = 256
$fname.DataBindings.DefaultDataSourceUpdateMode = 0
$fname.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 128
$System_Drawing_Point.Y = 40
$fname.Location = $System_Drawing_Point
$fname.Name = "fname"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 28
$System_Drawing_Size.Width = 147
$fname.Size = $System_Drawing_Size
$fname.TabIndex = 23

$form1.Controls.Add($fname)

$val2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 290
$System_Drawing_Point.Y = 40
$val2.Location = $System_Drawing_Point
$val2.Name = "val2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 108
$val2.Size = $System_Drawing_Size
$val2.TabIndex = 11

$form1.Controls.Add($val2)

## Last name Entry

## Office Location
$label4.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 38
$System_Drawing_Point.Y = 119
$label4.Location = $System_Drawing_Point
$label4.Name = "$label4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 19
$System_Drawing_Size.Width = 84
$label4.Size = $System_Drawing_Size
$label4.TabIndex = 24
$label4.Text = "Office Location"

$form1.Controls.Add($label4)

$SiteLocate.AutoCompleteMode = 3
$SiteLocate.AutoCompleteSource = 256
$SiteLocate.DataBindings.DefaultDataSourceUpdateMode = 0
$SiteLocate.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 128
$System_Drawing_Point.Y = 119
$SiteLocate.Location = $System_Drawing_Point
$SiteLocate.Name = "SiteLocate"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 28
$System_Drawing_Size.Width = 147
$SiteLocate.Size = $System_Drawing_Size
$SiteLocate.TabIndex = 23

$form1.Controls.Add($SiteLocate)

$val4.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 287
$System_Drawing_Point.Y = 135
$val4.Location = $System_Drawing_Point
$val4.Name = "val4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 108
$val4.Size = $System_Drawing_Size
$val4.TabIndex = 22

$form1.Controls.Add($val4)

## Office Telephone Entry


## Manager to Notify


#endregion Generated Form Code

## Save the initial state of the form
$InitialFormWindowState = $form1.WindowState

## Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)

## Show the Form
$form1.ShowDialog()| Out-Null

## End Function

## Call the Function
GenerateForm
