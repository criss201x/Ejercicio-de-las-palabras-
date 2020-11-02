using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicio
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void boton_Click(object sender, EventArgs e)
        {
            String frase = txtfrase.Text;
            String[] words = frase.Split(' ');
            Array.Sort(words, StringComparer.InvariantCulture);
            char[] ordenar;
            String ordenado;
            int tamanio=0, pos=0;
            foreach (String dato in words) {
                if (dato.ToLower().Contains('o') || dato[0]=='a'){                    
                    tamanio = dato.Length;
                    palabrasA.Items.Add(dato);
                    pos = tamanio - 3;
                    //palabrasA.Items.Add(pos.ToString());
                    if (tamanio > 2 && dato[pos]!='l') {
                        ordenar = dato.ToCharArray();
                        Array.Reverse(ordenar);
                        ordenado = new String(ordenar);
                        palabrasB.Items.Add(ordenado);                        
                    }

                }
                //else{
                    //palabrasA.Items.Add(dato);
                  //  palabrasB.Items.Add(dato);
                //}
            }

        }

        protected void palabrasA_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void palabrasB_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}