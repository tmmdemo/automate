$folder = "C:\Users\Public\Pictures"
$wait = 1

[void][reflection.assembly]::LoadWithPartialName("System.Windows.Forms")
$form = new-object Windows.Forms.Form
$form.Text = "Image Viewer"
$form.WindowState= "Maximized"
$form.controlbox = $false
$form.formborderstyle = "0"
$form.BackColor = [System.Drawing.Color]::black

$pictureBox = new-object Windows.Forms.PictureBox
$pictureBox.dock = "fill"
$pictureBox.sizemode = 4
$form.controls.add($pictureBox)
$form.Add_Shown( { $form.Activate()} )
$form.Show()

do
{
    $files = (get-childitem $folder | where { ! $_.PSIsContainer})
    foreach ($file in $files)
    {
        $pictureBox.Image = [System.Drawing.Image]::Fromfile($file.fullname)
        Start-Sleep -Seconds $wait
        $form.bringtofront()
    }
}
While ($running -ne 1)
