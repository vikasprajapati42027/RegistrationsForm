package Test;
import java.sql.*;
import java.util.ArrayList;
public class UserRegistration_dao{
Connection con;
public Connection getConnection() throws Exception
    {
    Class.forName("com.mysql.jdbc.Driver");
Connection    connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/registrations","root","");
    return connect;
    }
public ArrayList<UserRegistration_pojo>Fetch() throws Exception
    {
con=getConnection();
ArrayList<UserRegistration_pojo> data=new ArrayList<UserRegistration_pojo>();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from user");
while(rs.next())
{
UserRegistration_pojo obj=new UserRegistration_pojo();

obj.setId(rs.getInt(1));
obj.setFullname(rs.getString(2));
obj.setEmail(rs.getString(3));
obj.setPass(rs.getString(4));
obj.setDob(rs.getString(5));
obj.setGender(rs.getString(6));
data.add(obj);
}
return data;
}
public ArrayList<UserRegistration_pojo>getData(int id) throws Exception
    {
con=getConnection();
ArrayList<UserRegistration_pojo> data=new ArrayList<UserRegistration_pojo>();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from user where id='"+id+"'");
rs.next();
UserRegistration_pojo obj=new UserRegistration_pojo();

obj.setId(rs.getInt(1));
obj.setFullname(rs.getString(2));
obj.setEmail(rs.getString(3));
obj.setPass(rs.getString(4));
obj.setDob(rs.getString(5));
obj.setGender(rs.getString(6));
data.add(obj);

return data;
}
public int update(int id,String fullname,String email, String pass ,String dob,String gender) throws Exception
{
    con=getConnection();
    int i=0;
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("Update user set fullname='"+fullname+"',email='"+email+"',pass='"+pass+"',dob='"+dob+"',gender='"+gender+"'  where id='"+id+"'" );
    return i;
}
public int Insert(String fullname,String email, String pass ,String dob,String gender) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("insert into user(fullname,email,pass,dob,gender) values ('"+fullname+"','"+email+"','"+pass+"','"+dob+"','"+gender+"')");
    return i;
}
public int Delete(int id ) throws Exception
{
    int i=0;
    con=getConnection();
    Statement stmt=con.createStatement();
    i=stmt.executeUpdate("delete from user where id='"+id+"'");
    return i;
}
}
