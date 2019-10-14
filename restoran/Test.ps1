# Sacuvaj u bazu podataka
# primjer:
# save-to-db -cardid $data -bt $dataArr[2] -fc $dataArr[4] -cc $dataArr[6] -dateIO $dateIO 
#            -sqlServer "192.168.15.144" -sqlDBName "AXDB" -userID "sa" -password 'p"ssw0rd' -dbTable "dbo.UNOTrans";
function save-to-db() {
    param (
        [string] $cardid ="",
        [string] $bt = "",
        [string] $fc = "",
        [string] $cc = "",
        [datetime] $dateIO = "",
        [string] $sqlServer = "",
        [string] $sqlDBName = "",
        [string] $userID = "",
        [string] $password = "",
        [string] $dbTable = ""
    )


    $sqlConnection = New-Object System.Data.SqlClient.SqlConnection
    $sqlConnection.ConnectionString = "Server = $sqlServer; Database = $sqlDBName;
    User ID= $userID; Password= $password"
    $sqlCmd = New-Object System.Data.SqlClient.SqlCommand
    
    $sqlCmd.CommandText = "INSERT INTO $dbTable (CardCode,dateIO,bt,fc,cc) VALUES ('$cardid','$dateIO','$bt','$fc','$cardid');"

    $sqlCmd.Connection = $sqlConnection
    $sqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
    $sqlAdapter.SelectCommand = $sqlCmd
    $dataSet = New-Object System.Data.DataSet
    $sqlAdapter.Fill($dataSet)
    $sqlConnection.Close()
}

# Sacuvaj u tekst fajl pod nazivom arduinoLog.txt na desktopu trenutno
# ulogovanog korisnika
# primjer:
#      save-to-file -data $value[$i]
#      save-to-file -data $value[$i] -append
# append opcija podrazumjeva dopisivanje u fajl, bez append se vrsi 
# prepisivanje poslednjim unosom
function save-to-file {
    param (
            [string] $data = "",
            [switch] $append,
            [string] $userName = $env:UserName,
            [string] $filePath = "C:\Users\${userName}\Desktop\arduinoLogCom10.txt"
          )

        if ($append) {
            $data | Add-Content -Path $filePath
        } else {
            $data | Set-Content -Path $filePath
        }
}

# Provjera vrijednosti promjenljivih, ispisivanje na ekranu
function testValues {
    param (
            [string] $data = "",
            [datetime] $timestamp,
            [string] $bc,
            [string] $fc,
            [string] $cc
          )
    write-host "Kartica: " $data
    write-host "Vreme: " $timestamp
    write-host "Bit Count: " $bc
    write-host "Facility Code: " $fc
    write-host "Card Code: " $cc
}

function save-to-db() {
    param (
        [string] $cardid ="",
        [string] $bt = "",
        [string] $fc = "",
        [string] $cc = "",
        [datetime] $dateIO = "",
        [string] $sqlServer = "",
        [string] $sqlDBName = "",
        [string] $userID = "",
        [string] $password = "",
        [string] $dbTable = ""
    )


    $sqlConnection = New-Object System.Data.SqlClient.SqlConnection
    $sqlConnection.ConnectionString = "Server = $sqlServer; Database = $sqlDBName;
    User ID= $userID; Password= $password"
    $sqlCmd = New-Object System.Data.SqlClient.SqlCommand
    
    $sqlCmd.CommandText = "INSERT INTO $dbTable (CardCode,dateIO,bt,fc,cc) VALUES ('$cardid','$dateIO','$bt','$fc','$cardid');"

    $sqlCmd.Connection = $sqlConnection
    $sqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
    $sqlAdapter.SelectCommand = $sqlCmd
    $dataSet = New-Object System.Data.DataSet
    $sqlAdapter.Fill($dataSet)
    $sqlConnection.Close()
}

Function MakeNewForm {
    param (
        [string] $cardid =""
    )
	$Form.Close()
	$Form.Dispose()
	DrawForm -cardid $cardid
}
function DrawForm {
    param (
        [string] $cardid =""
    )
    
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
    $Name_TextBox.Text                  = $cardid
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

    return $MainForm
}
    $COM_PORT = "COM2"
    # Obavezno definisati i provjeriti da li je odgovarajući com port
    # Set-Variable COM_PORT -option Constant -value $COM_PORT
    
    # Definisanje ID vrijednosti za citac
    Set-Variable READER_ID -option Constant -value "READER-TEST"
    
    $port= new-Object System.IO.Ports.SerialPort $COM_PORT,9600,None,8,one;

    $port.open(); 
    while ($port.IsOpen) {
        $data = $port.ReadLine()
        
        write-host $data
        # Split radi izbacivanja nepotrebnog teksta
        #$datas = $data.split("TFBC")
        
        # Kreiranje niza $dataArr[2] => bc, $dataArr[4] => fc, $dataArr[6] =>cc
        $dataArr = $data -split ' '
        
        # Timestamp
        $dateIO = Get-Date
       
        # if (Test-Connection -ComputerName 192.168.15.122 -Count 1 -Quiet) {
        #     save-to-db -cardid $dataArr[0] -bt $dataArr[1] -fc $dataArr[2] -dateIO $dateIO -sqlServer "192.168.15.144" -sqlDBName "UNO1" -userID "sa" -password 'p"ssw0rd' -dbTable "dbo.UNOTrans";
        # }

        $form = DrawForm -cardid $dataArr[0]

        save-to-db -cardid $dataArr[0] -bt $dataArr[1] -fc $dataArr[2] -dateIO $dateIO -sqlServer "127.0.0.1" -sqlDBName "UNO1" -userID "sa" -password 'p@ssw0rd' -dbTable "dbo.UNOTrans";
        
        $form.ShowDialog()
        $form.close()
        $form.dispose()

        if ($Host.UI.RawUI.KeyAvailable -and ([int]$Host.UI.RawUI.ReadKey('AllowCtrlC,IncludeKeyUp,NoEcho').Character) -eq 3) {
            $port.close()
            break;
    #<Ctrl>Pause za prekid
        }
    }
    $port.close()