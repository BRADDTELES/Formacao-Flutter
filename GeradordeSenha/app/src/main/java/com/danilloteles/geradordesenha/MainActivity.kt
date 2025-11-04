package com.danilloteles.geradordesenha

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
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.danilloteles.geradordesenha.ui.theme.Gray100
import com.danilloteles.geradordesenha.ui.theme.Gray900
import com.danilloteles.geradordesenha.ui.theme.Teal700
import com.danilloteles.geradordesenha.ui.theme.White

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

   var password by remember { mutableStateOf("123456") }

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

      }


   }

}

@Preview
@Composable
private fun HomePreview() {
   Home()
}
