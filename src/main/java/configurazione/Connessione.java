package configurazione;

import configurazione.Connessione;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.apache.tomcat.jdbc.pool.PoolProperties;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connessione {

        private static DataSource datasource;
    public static Connection connessione() throws SQLException {
            if(datasource == null)
            {
                PoolProperties p = new PoolProperties();
                p.setUrl("jdbc:mysql://localhost:3306/SpalshWearBD?serverTimezone=UTC");
                p.setDriverClassName("com.mysql.cj.jdbc.Driver");
                p.setUsername("root");
                p.setPassword("iosonoGr00t");
                datasource = new DataSource();
                datasource.setPoolProperties(p);

            }
            return (Connection) datasource.getConnection();

        }
}
