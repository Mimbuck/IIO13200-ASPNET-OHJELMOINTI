using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Fiidit : System.Web.UI.Page
{
    private object XmlDocument;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetFeeds_Click(object sender, EventArgs e)
    {
        string url = @"http://www.iltasanomat.fi/rss/tuoreimmat.xml";
        myDataSource.DataFile = url;
        GetFeeds();
    }

    protected void btnGetFeedsYle_Click(object sender, EventArgs e)
    {
        string url = @"http://www.iltasanomat.fi/rss/tuoreimmat.xml";
        myDataSource.DataFile = url;
        GetFeeds();
    }

    private void GetFeeds()
    {
        try
        {
            //käytetään xmlDocument luokkaa ja sen metodeja ominaisuuksia
            XmlDocument doc = new XmlDocument();
            doc = myDataSource.GetXmlDocument();
            //aluksi haetaan kanavan tietoja
            XmlNode node1 = doc.SelectSingleNode("/rss/channel");
            string title = node1["title"].InnerText;
            myDiv.InnerHtml = string.Format("<h1>{0} {1}</h1>", title, DateTime.Now.ToString());
            //haetaan kaikki item elementit ja loopitetaan ne läpi
            XmlNodeList nodes = doc.SelectNodes("/rss/channel/item");
            string cat;
            string link;
            foreach (XmlNode item in nodes)
            {
                cat = item["category"].InnerText;
                title = item["title"].InnerText;
                link = item["link"].InnerText;
                myDiv.InnerHtml += string.Format("{0} <a href='{1}' > {2}</a>", cat, link, title);
                myDiv.InnerHtml += "<br/>";

            }

        }
        catch (Exception ex)
        {
            myDiv.InnerHtml = ex.Message;

        }

    }


}

