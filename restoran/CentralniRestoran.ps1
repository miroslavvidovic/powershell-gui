<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$MainForm                            = New-Object system.Windows.Forms.Form
$MainForm.ClientSize                 = '1366,768'
$MainForm.text                       = "UNO - Centralni restoran"
$MainForm.BackColor                  = "#ECEEF0"
$MainForm.TopMost                    = $true

$User_PictureBox                     = New-Object system.Windows.Forms.PictureBox
$User_PictureBox.width               = 400
$User_PictureBox.height              = 400
$User_PictureBox.location            = New-Object System.Drawing.Point(10,20)
$User_PictureBox.imageLocation       = ".\assets\user.jpg"
$User_PictureBox.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom

$Name_TextBox                       = New-Object system.Windows.Forms.TextBox
$Name_TextBox.multiline             = $false
$Name_TextBox.width                 = 400
$Name_TextBox.height                = 20
$Name_TextBox.location              = New-Object System.Drawing.Point(460, 40)
$Name_TextBox.Font                  = 'Microsoft Sans Serif,16'
$Name_TextBox.ReadOnly              = $true

$Input_TextBox                       = New-Object system.Windows.Forms.TextBox
$Input_TextBox.multiline             = $false
$Input_TextBox.width                 = 400
$Input_TextBox.height                = 20
$Input_TextBox.location              = New-Object System.Drawing.Point(10, 460)
$Input_TextBox.Font                  = 'Microsoft Sans Serif,16'

$Input_Button                         = New-Object system.Windows.Forms.Button
$Input_Button.text                    = "Unos"
$Input_Button.width                   = 120
$Input_Button.height                  = 50
$Input_Button.location                = New-Object System.Drawing.Point(10,500)
$Input_Button.Font                    = 'Microsoft Sans Serif,16'


$Panel1                          = New-Object system.Windows.Forms.Panel
$Panel1.height                   = 100
$Panel1.width                    = 1356
$Panel1.BackColor                = "#fbfbfb"
$Panel1.location                 = New-Object System.Drawing.Point(2,8)

$PictureBox2                     = New-Object system.Windows.Forms.PictureBox
$PictureBox2.width               = 60
$PictureBox2.height              = 30
$PictureBox2.location            = New-Object System.Drawing.Point(56,41)
$PictureBox2.imageLocation       = "undefined"
$PictureBox2.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$PictureBox3                     = New-Object system.Windows.Forms.PictureBox
$PictureBox3.width               = 60
$PictureBox3.height              = 30
$PictureBox3.location            = New-Object System.Drawing.Point(174,38)
$PictureBox3.imageLocation       = "undefined"
$PictureBox3.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom
$MainForm.controls.AddRange(@($User_PictureBox,$Input_TextBox,$Input_Button, $Name_TextBox))
# $Panel1.controls.AddRange(@($PictureBox2,$PictureBox3))

$MainForm.ShowDialog()