package db;

import entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by okten22 on 22.05.17.
 */
public class MyDBConnectionUtil {
    private String url = "jdbc:mysql://localhost:3306/db1500";
    private String user = "root";
    private String password = "root";
    Connection connection = DriverManager.getConnection(url, user, password);

    public MyDBConnectionUtil() throws SQLException {

    }
    public void save(String name, String password) throws SQLException {
        String sql="insert into user(name,password) VALUES (?,?)";
        PreparedStatement statement =connection.prepareStatement(sql);
        statement.setString(1,name);
        statement.setString(2,password);
        statement.executeUpdate();


    }
    public List<User> findAll() throws SQLException {
        List<User> users = new ArrayList<User>();
        Statement statement =connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT  * FROM user");
        while (resultSet.next()){
            int id = resultSet.getInt(1);
            String name = resultSet.getString(2);
            String password = resultSet.getString(3);
            User user = User.builder().id(id).name(name).password(password).build();
            users.add(user);

        }

        return users;
    }
}
