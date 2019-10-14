function Draw-Form {
    param([string]$name,[string]$idnum,[string]$sector,[string]$department,[string]$mealnum)


    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $UnoRestoran                     = New-Object system.Windows.Forms.Form
    $UnoRestoran.ClientSize          = '1024,800'
    $UnoRestoran.text                = "Alumina - Centralni Restoran"
    $UnoRestoran.TopMost             = $false
    $UnoRestoran.icon                = "C:\Users\miroslav\Desktop\UnoRestoran\assets\Restaurant.ico"
    $unoRestoran.FormBorderStyle     = "FixedDialog"

    $PictureBox_Radnik               = New-Object system.Windows.Forms.PictureBox
    $PictureBox_Radnik.width         = 400
    $PictureBox_Radnik.height        = 400
    $PictureBox_Radnik.location      = New-Object System.Drawing.Point(10,44)
    $PictureBox_Radnik.imageLocation = "C:\Users\miroslav\Desktop\UnoRestoran\assets\user.png"
    $PictureBox_Radnik.SizeMode      = [System.Windows.Forms.PictureBoxSizeMode]::zoom

    $TextBox_ImePrezime              = New-Object system.Windows.Forms.TextBox
    $TextBox_ImePrezime.multiline    = $false
    $TextBox_ImePrezime.text         = $name
    $TextBox_ImePrezime.width        = 550
    $TextBox_ImePrezime.height       = 30
    $TextBox_ImePrezime.enabled      = $false
    $TextBox_ImePrezime.location     = New-Object System.Drawing.Point(450,44)
    $TextBox_ImePrezime.Font         = 'Microsoft Sans Serif,20'

    $TextBox_PlatniBroj              = New-Object system.Windows.Forms.TextBox
    $TextBox_PlatniBroj.multiline    = $false
    $TextBox_PlatniBroj.text         = $idnum
    $TextBox_PlatniBroj.width        = 550
    $TextBox_PlatniBroj.height       = 30
    $TextBox_PlatniBroj.enabled      = $false
    $TextBox_PlatniBroj.location     = New-Object System.Drawing.Point(450,94)
    $TextBox_PlatniBroj.Font         = 'Microsoft Sans Serif,20'

    $Label_Sektor                    = New-Object system.Windows.Forms.Label
    $Label_Sektor.text               = "Sektor : "
    $Label_Sektor.AutoSize           = $true
    $Label_Sektor.width              = 25
    $Label_Sektor.height             = 10
    $Label_Sektor.location           = New-Object System.Drawing.Point(450,165)
    $Label_Sektor.Font               = 'Microsoft Sans Serif,15'

    $TextBox_Sektor                  = New-Object system.Windows.Forms.TextBox
    $TextBox_Sektor.multiline        = $false
    $TextBox_Sektor.text             = $sector
    $TextBox_Sektor.width            = 550
    $TextBox_Sektor.height           = 25
    $TextBox_Sektor.enabled          = $false
    $TextBox_Sektor.location         = New-Object System.Drawing.Point(450,200)
    $TextBox_Sektor.Font             = 'Microsoft Sans Serif,15'

    $Label_Sluzba                    = New-Object system.Windows.Forms.Label
    $Label_Sluzba.text               = "Služba : "
    $Label_Sluzba.AutoSize           = $true
    $Label_Sluzba.width              = 25
    $Label_Sluzba.height             = 10
    $Label_Sluzba.location           = New-Object System.Drawing.Point(450,245)
    $Label_Sluzba.Font               = 'Microsoft Sans Serif,15'

    $TextBox_Sluzba                  = New-Object system.Windows.Forms.TextBox
    $TextBox_Sluzba.multiline        = $false
    $TextBox_Sluzba.text             = $department
    $TextBox_Sluzba.width            = 550
    $TextBox_Sluzba.height           = 25
    $TextBox_Sluzba.enabled          = $false
    $TextBox_Sluzba.location         = New-Object System.Drawing.Point(450,280)
    $TextBox_Sluzba.Font             = 'Microsoft Sans Serif,15'

    $Label_BrojObroka                = New-Object system.Windows.Forms.Label
    $Label_BrojObroka.text           = "Broj preuzetih obroka : "
    $Label_BrojObroka.AutoSize       = $true
    $Label_BrojObroka.width          = 25
    $Label_BrojObroka.height         = 10
    $Label_BrojObroka.location       = New-Object System.Drawing.Point(450,325)
    $Label_BrojObroka.Font           = 'Microsoft Sans Serif,15'
    #$Label_BrojObroka.ForeColor      = "#d0021b"

    $TextBox_BrojObroka              = New-Object system.Windows.Forms.TextBox
    $TextBox_BrojObroka.multiline    = $false
    $TextBox_BrojObroka.text         = $mealnum
    $TextBox_BrojObroka.width        = 550
    $TextBox_BrojObroka.height       = 25
    $TextBox_BrojObroka.enabled      = $false
    $TextBox_BrojObroka.location     = New-Object System.Drawing.Point(450,360)
    $TextBox_BrojObroka.Font         = 'Microsoft Sans Serif,15'
    $TextBox_BrojObroka.ForeColor    = "#d0021b"

    $TextBox_UnosBroja              = New-Object system.Windows.Forms.TextBox
    $TextBox_UnosBroja.multiline    = $false
    # $TextBox_UnosBroja.text         = $mealnum
    $TextBox_UnosBroja.width        = 550
    $TextBox_UnosBroja.height       = 25
    $TextBox_UnosBroja.enabled      = $true
    $TextBox_UnosBroja.location     = New-Object System.Drawing.Point(450,400)
    $TextBox_UnosBroja.Font         = 'Microsoft Sans Serif,15'
    $TextBox_UnosBroja.ForeColor    = "#d0021b"

    $Panel_Footer                    = New-Object system.Windows.Forms.Panel
    $Panel_Footer.height             = 100
    $Panel_Footer.width              = 1010
    $Panel_Footer.BackColor          = "#ffffff"
    $Panel_Footer.location           = New-Object System.Drawing.Point(8,650)

    $PictureBox_Logo1                = New-Object system.Windows.Forms.PictureBox
    $PictureBox_Logo1.width          = 100
    $PictureBox_Logo1.height         = 90
    $PictureBox_Logo1.location       = New-Object System.Drawing.Point(340,10)
    $PictureBox_Logo1.imageLocation  = "C:\Users\miroslav\Desktop\UnoRestoran\assets\UnoLogo.png"
    $PictureBox_Logo1.SizeMode       = [System.Windows.Forms.PictureBoxSizeMode]::zoom

    $PictureBox_Logo2                = New-Object system.Windows.Forms.PictureBox
    $PictureBox_Logo2.width          = 200
    $PictureBox_Logo2.height         = 100
    $PictureBox_Logo2.location       = New-Object System.Drawing.Point(524,10)
    $PictureBox_Logo2.imageLocation  = "C:\Users\miroslav\Desktop\UnoRestoran\assets\AluminaLogo.png"
    $PictureBox_Logo2.SizeMode       = [System.Windows.Forms.PictureBoxSizeMode]::zoom

    $Label_Footer                    = New-Object system.Windows.Forms.Label
    $Label_Footer.text               = "Projekat UNO - Služba za IT"
    $Label_Footer.AutoSize           = $true
    $Label_Footer.width              = 25
    $Label_Footer.height             = 10
    $Label_Footer.location           = New-Object System.Drawing.Point(400,770)
    $Label_Footer.Font               = 'Microsoft Sans Serif,10'

    $UnoRestoran.controls.AddRange(@($PictureBox_Radnik,$TextBox_ImePrezime,$TextBox_PlatniBroj,$Label_Sektor,$TextBox_Sektor,$Label_Sluzba,$TextBox_Sluzba,$Label_BrojObroka,$TextBox_BrojObroka,$Panel_Footer,$Label_Footer,$TextBox_UnosBroja))
    $Panel_Footer.controls.AddRange(@($PictureBox_Logo1,$PictureBox_Logo2))

    $UnoRestoran.ShowDialog()
}

Draw-Form -name "Miroslav Vidović" -idnum "21750" -sector "Automatika" -department "Služba za IT" -mealnum "2"
Draw-Form -name "Gordana Milovanović" -idnum "21750" -sector "Računovodstvo i finansije" -department "Finansije" -mealnum "2"