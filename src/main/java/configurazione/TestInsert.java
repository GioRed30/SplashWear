package configurazione;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestInsert {

    public void insertData(String data) throws SQLException {
        Connection c = Connessione.connessione();
        InsertMYSQL.insert("questa e' la query di insert...", c);
    }
    public String selectCasualData(String data) throws SQLException {
        Connection c = Connessione.connessione();
        ResultSet rs = SelectMYSQL.select("select data where = " + data, c);
        String result = "";
        try {
            rs.next();
            result = rs.getString("data");

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

}
