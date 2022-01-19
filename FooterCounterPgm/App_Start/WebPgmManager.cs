using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class HWSettings
{
    public string DefaultPageText1 {get; set;}
    public string DefaultPageText2 { get; set; }
    public string DefaultPageText3 { get; set; }

}


public class WebPgmManager
{

    public static HWSettings LoadSettings(string Filepath)
    {
        HWSettings Settings = new HWSettings();
        try
        {
            
            System.Xml.Serialization.XmlSerializer reader =new System.Xml.Serialization.XmlSerializer(typeof(HWSettings));
             System.IO.StreamReader file = new System.IO.StreamReader(Filepath);
            Settings = (HWSettings)reader.Deserialize(file);
            file.Close();
            return Settings;
        }
        catch (Exception)
        {
            return Settings;
        }
    }
    public static void SaveSettings(string Filepath,HWSettings SettingsObj)
    {
        System.Xml.Serialization.XmlSerializer writer = new System.Xml.Serialization.XmlSerializer(typeof(HWSettings));

        var FileName = "HWSettings.xml";
        System.IO.FileStream file = System.IO.File.Create(Filepath);
        writer.Serialize(file, SettingsObj);
        file.Close();
    }
}