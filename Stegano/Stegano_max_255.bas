Attribute VB_Name = "Stegano_max_255"
Option Explicit
Public Declare Function GetPixel Lib "gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long) As Long
Public Declare Function SetPixel Lib "gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal crColor As Long) As Long

Global rRed As Long, rBlue As Long, rGreen As Long
Public Function RGBfromLONG(LongCol As Long)
' Get The Red, Blue And Green Values Of A Colour From The Long Value
Dim Blue As Double, Green As Double, Red As Double, GreenS As Double, BlueS As Double
Blue = Fix((LongCol / 256) / 256)
Green = Fix((LongCol - ((Blue * 256) * 256)) / 256)
Red = Fix(LongCol - ((Blue * 256) * 256) - (Green * 256))
rRed = Red: rBlue = Blue: rGreen = Green
End Function

Sub stegano(picBox As PictureBox, texte As String)
Dim newVal As Integer, h As Integer, W As Integer, K As Integer, ii As Integer
Dim C As Long, newr As Long
Dim opRed As Long, opBlue As Long, opGreen As Long
ii = 1
picBox.ScaleMode = 3
SetPixel picBox.hdc, 0, 0, RGB(Len(texte), 255, 255)
For h = 1 To picBox.ScaleHeight
    For W = 1 To picBox.ScaleWidth

ii = ii + 1
If ii >= Len(texte) Then Exit Sub

C = GetPixel(picBox.hdc, W, h)
RGBfromLONG C
newr = Asc(Mid(texte, ii - 1, 1))
C = RGB(newr, rGreen, rBlue)
SetPixel picBox.hdc, W, h, C
    Next W
Next h
End Sub

Sub nostegano(picBox As PictureBox, TB As TextBox)
Dim newVal As Integer, h As Integer, W As Integer, K As Integer, ii As Integer
Dim C As Long, newr As Long
Dim opRed As Long, opBlue As Long, opGreen As Long
ii = 1
picBox.ScaleMode = 3
C = GetPixel(picBox.hdc, 0, 0)
RGBfromLONG C
TB.MaxLength = rRed
For h = 1 To picBox.ScaleHeight
    For W = 1 To picBox.ScaleWidth
ii = ii + 1
If ii >= 200 Then Exit Sub
C = GetPixel(picBox.hdc, W, h)
RGBfromLONG C

TB.Text = TB.Text & Chr(rRed)
    Next W
Next h
End Sub
