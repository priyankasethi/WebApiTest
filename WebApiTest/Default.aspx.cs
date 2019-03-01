using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApiTest
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        public static string GetReverseString(string Sentence)
        {
            return StringHelper.ReverseString(Sentence);
        }


        static class StringHelper
        {
            /// <summary>
            /// Receives string and returns the string with its letters reversed.
            /// </summary>
            public static string ReverseString(string s)
            {
                char[] arr = s.ToCharArray();
                Array.Reverse(arr);
                return new string(arr);
            }
        }
    }
}