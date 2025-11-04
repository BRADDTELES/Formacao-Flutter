package com.danilloteles.geradordesenha

import android.R
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.rounded.AddCircle
import androidx.compose.material.icons.rounded.ContentCopy
import androidx.compose.material.icons.rounded.CopyAll
import androidx.compose.material.icons.rounded.Refresh
import androidx.compose.material.icons.rounded.Sync
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.danilloteles.geradordesenha.ui.theme.Gray100
import com.danilloteles.geradordesenha.ui.theme.Gray900
import com.danilloteles.geradordesenha.ui.theme.Teal700
import com.danilloteles.geradordesenha.ui.theme.White
import kotlin.random.Random

class MainActivity : ComponentActivity() {
   override fun onCreate(savedInstanceState: Bundle?) {
      super.onCreate(savedInstanceState)
      enableEdgeToEdge()
      setContent {
         Home()
      }
   }
}


@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun Home() {

   val clipboardManager = LocalClipboardManager.current //Funcionalidade de Copiar e Colar do Compose

   var password by remember { mutableStateOf("") }
   var strength by remember { mutableStateOf("") } // Força da Senha

   val specialCharacters = arrayOf(
      "!","$","%","(",")",",",":","<",">","/","]","~","[","@","?","|"
   )

   val upperCaseLetters = arrayOf(
      "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P",
      "Q","R","S","T","U","V","X","Z","W","Y"
   )

   val lowerCaseLetters = arrayOf(
      "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p",
      "q","r","s","t","u","v","x","z","w","y"
   )

   Scaffold(
      topBar = {
         TopAppBar(
            title = {
               Text("Gerador de Senha")
            },
            colors = TopAppBarDefaults.topAppBarColors(
               containerColor = Gray100
            )
         )
      }
   ) { paddingValues ->

      Column(
         modifier = Modifier
            .fillMaxSize()
            .background(White)
            .padding(paddingValues),
         verticalArrangement = Arrangement.Center,
         horizontalAlignment = Alignment.CenterHorizontally
      ) {

         Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceEvenly
         ) {

            OutlinedTextField(
               value = password,
               onValueChange = {
                  password = it
               },
               label = {
                  Text(text = "Password")
               },
               textStyle = TextStyle(
                  color = Gray900,
                  fontSize = 25.sp,
                  fontWeight = FontWeight.Bold
               ),
               maxLines = 1,
               modifier = Modifier
                  .width(250.dp)
                  .padding(10.dp),
            ) // Fechamento do Campo de texto de Password

            IconButton(
               onClick = {
                  clipboardManager.setText(annotatedString = AnnotatedString(password))
               },
               modifier = Modifier
                  .size(50.dp)
                  .background(
                     color = Teal700,
                     shape = RoundedCornerShape(15.dp)
                  )
            ) {
               Icon(
                  imageVector = Icons.Rounded.ContentCopy,
                  contentDescription = "Content Copy",
                  tint = White
               )
            } // Fechamento do IconButton Copy

            IconButton(
               onClick = {

                  val numbers = Random.nextInt(100000, 999999)// Gerar 6 numeros aleátorios
                  password = "${specialCharacters.random()}${specialCharacters.random()}" +
                          "${numbers}" +
                          "${upperCaseLetters.random()}${upperCaseLetters.random()}" +
                          "${lowerCaseLetters.random()}${lowerCaseLetters.random()}"

                  strength = "Senha Forte"
               },
               modifier = Modifier
                  .size(50.dp)
                  .border(
                     width = 1.dp,
                     color = Gray900,
                     shape = RoundedCornerShape(15.dp)
                  )
            ) {
               Icon(
                  imageVector = Icons.Rounded.Refresh,
                  contentDescription = "Refresh",
                  tint = Gray900
               )
            } // Fechamento do IconButton Refresh

         } // Fechamento Row

         Text(
            text = strength,
            fontSize = 18.sp,
            color = Teal700,
            fontWeight = FontWeight.Bold
         )

      }


   }

}

@Preview
@Composable
private fun HomePreview() {
   Home()
}
