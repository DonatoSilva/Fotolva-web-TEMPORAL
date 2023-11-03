using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.Odbc;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fotolva_Web
{
    public partial class Evidencia : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["Dbconnection"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            var dbConnection = new MySqlConnection(connectionString);
            
            if (!IsPostBack)
            {
                loadDataAlbums(dbConnection);
            }
        }

        private void loadDataAlbums(MySqlConnection dbConnection)
        {
            try
            {
                DataTable albumsDataTable = GetAlbums(dbConnection);

                // Agrega la columna "ImageUrl" al DataTable si no existe
                if (!albumsDataTable.Columns.Contains("ImageUrl"))
                {
                    albumsDataTable.Columns.Add("ImageUrl", typeof(string));
                }

                foreach (DataRow row in albumsDataTable.Rows)
                {
                    int albumId = Convert.ToInt32(row["id"]);
                    Tuple<byte[], string> imageInfo = ReadImageForAlbum(albumId, dbConnection);

                    // Guarda la imagen en el proyecto y obtén la URL
                    string imageUrl = GuardarImagenDesdeBytes(imageInfo.Item1, imageInfo.Item2);

                    // Encuentra el control asp:Image en la fila actual de la GridView
                    int rowIndex = albumsDataTable.Rows.IndexOf(row);
                    if (rowIndex >= 0 && rowIndex < GridAlbumData.Rows.Count)
                    {
                        Image albumImage = GridAlbumData.Rows[rowIndex].FindControl("AlbumImage") as Image;
                        if (albumImage != null)
                        {
                            albumImage.ImageUrl = imageUrl;
                        }
                    }
                }

                GridAlbumData.DataSource = albumsDataTable;
                GridAlbumData.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("Ocurrió un error: " + ex.Message);
            }
        }




        public DataTable GetAlbums(MySqlConnection dbConnection)
        {
            DataTable albumsDataTable = new DataTable();
            using (dbConnection)
            {
                try
                {
                    dbConnection.Open();
                    string query = "SELECT id, name, date, place, description FROM Albums";
                    MySqlCommand cmd = new MySqlCommand(query, dbConnection);
                    MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                    adapter.Fill(albumsDataTable);
                }
                catch (Exception e)
                {
                    Response.Write("Error al obtener los álbumes: " + e.Message);
                }
                finally
                {
                    dbConnection.Close();
                }
            }

            return albumsDataTable;
        }

        public Tuple<byte[], string> ReadImageForAlbum(int albumId, MySqlConnection dbConnection)
        {
            byte[] imageData = null;
            string imageName = null;

            using (dbConnection)
            {
                try
                {
                    dbConnection.Open();
                    string query = "SELECT name, dataImage FROM Images WHERE albumId = @albumId LIMIT 1";
                    MySqlCommand cmd = new MySqlCommand(query, dbConnection);
                    cmd.Parameters.AddWithValue("@albumId", albumId);

                    using (MySqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            if (!reader.IsDBNull(0))
                            {
                                imageName = reader["name"].ToString();
                            }
                            if (!reader.IsDBNull(1))
                            {
                                imageData = (byte[])reader["dataImage"];
                            }
                        }
                    }
                    // Línea de depuración
                    System.Diagnostics.Debug.WriteLine($"imageData: {imageData}");
                }
                catch (Exception e)
                {
                    Response.Write($"Error al obtener la imagen para el álbum con ID {albumId}: " + e.Message);
                }
                finally
                {
                    dbConnection.Close();
                }
            }

            return Tuple.Create(imageData, imageName);
        }

        public string GuardarImagenDesdeBytes(byte[] imageData, string imageName)
        {
            string projectPath = Server.MapPath("~"); // Obtiene la ruta raíz del proyecto
            string imagesFolder = Path.Combine(projectPath, "Images"); 

            // Asegurarse de que la carpeta exista, si no, crearla
            if (!Directory.Exists(imagesFolder))
            {
                Directory.CreateDirectory(imagesFolder);
            }

            // Ruta completa para la nueva imagen
            string imagePath = Path.Combine(imagesFolder, imageName);

            // Guardar los bytes de la imagen en el archivo
            File.WriteAllBytes(imagePath, imageData);

            // Obtener la URL relativa de la imagen
            string relativeImagePath = "~/Images/" + imageName;

            return relativeImagePath;
        }

    }
}