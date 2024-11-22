using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;
using ZstdSharp.Unsafe;

namespace FootballPlayers
{
    internal class Program
    {

        public static Connect conn = new Connect();

        public static void Players()
        {
            conn.Connection.Open();

            string sql = "SELECT * FROM `football_players`";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            MySqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            do
            {
                var player = new
                {
                    Id = dr.GetInt32(4),
                    Name = dr.GetString(0),
                    Height = dr.GetInt32(1),
                    Weight = dr.GetInt32(2),
                    Nationality = dr.GetString(3)
                };

                Console.WriteLine($"Játékos neve: {player.Name}");
                Console.WriteLine($"Játékos magassága és súlya: {player.Height},{player.Weight}");
                Console.WriteLine($"Játékos nemzetisége: {player.Nationality}");

            } while (dr.Read());

            dr.Close();

            conn.Connection.Close();
        }

        static void Main(string[] args)
        {
            Players();
        }
    }
}