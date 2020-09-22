VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Steganographie - Hide Text in a image!"
   ClientHeight    =   6015
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4215
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6015
   ScaleWidth      =   4215
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   1815
      Left            =   0
      TabIndex        =   5
      Top             =   4200
      Width           =   4215
      Begin VB.Label Label1 
         Caption         =   $"Form1.frx":1CCA
         Height          =   1455
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   3975
      End
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   0
      MaxLength       =   255
      TabIndex        =   4
      Top             =   3840
      Width           =   4215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Get Text In Picture!"
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   3600
      Width           =   4215
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   0
      MaxLength       =   255
      TabIndex        =   2
      Text            =   "Enter a text!"
      Top             =   3360
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Hide Text In Picture!"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   3120
      Width           =   4215
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   3060
      Left            =   0
      MouseIcon       =   "Form1.frx":1E3F
      MousePointer    =   99  'Custom
      Picture         =   "Form1.frx":1F91
      ScaleHeight     =   3000
      ScaleWidth      =   4140
      TabIndex        =   0
      Top             =   0
      Width           =   4200
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
stegano Picture1, Text1.Text
End Sub

Private Sub Command2_Click()
nostegano Picture1, Text2
End Sub
