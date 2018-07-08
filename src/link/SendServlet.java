package link;

import db.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SendServlet",urlPatterns = "/send.jsp")
public class SendServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name_send = request.getParameter("name_send");
        int phone_send = Integer.parseInt(request.getParameter("phone_send"));
        String add_send = request.getParameter("add_send");
//        String phone_send=request.getParameter("phone_send");
//        String phone_accept=request.getParameter("phone_accept");
        int phone_accept =Integer.parseInt( request.getParameter("phone_accept"));
        String add_accept = request.getParameter("add_accept");
        String name_accept = request.getParameter("name_accept");
        String kind = request.getParameter("kind");
        float heavy =Float.parseFloat( request.getParameter("heavy"));
        float money =Float.parseFloat(request.getParameter("money"));
        String company=request.getParameter("company");
//        String heavy=request.getParameter("heavy");
//        String money=request.getParameter("money");
        Database database = new Database();
        System.out.println(name_send);
        System.out.println(phone_send);
        System.out.println(add_send);
        System.out.println(phone_accept);
        System.out.println(add_accept);
        System.out.println(heavy);
        System.out.println(money);
        System.out.println(name_accept);
        System.out.println(kind);
        System.out.println(company);
//        StringBuilder builder = new StringBuilder();
//        builder.append("insert into user(name_send,phone_send,add_send)values('").append(name1).append("',");
//        builder.append("'").append(sex1).append("',").append(age1).append(")");
//        String sql = builder.toString();
        String sql1="insert into good(name_send,phone_send,add_send,name_accept,phone_accept,add_accept,kind,heavy,money,company)values('"+name_send+"',"+phone_send+",'"+add_send+"','"+name_accept+"',"+phone_accept+",'"+add_accept+"','"+kind+"',"+heavy+","+money+",'"+company+"')";
//        String sql1="insert into user values('"+name_send+"','"+phone_send+"')";
//        String sql1="insert into good VALUES(4,'asd',23,'d','sda',325,'dsf','dcs',34,34)";
        try {
            database.Database(sql1);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
    }
response.sendRedirect("showgood..jsp");
//        String insertArr[] = {"name", "age", "sex"};}
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
