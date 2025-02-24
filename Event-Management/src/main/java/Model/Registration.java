package Model;

import java.sql.*;
import java.util.ArrayList;
import jakarta.servlet.http.HttpSession;

public class Registration {

	private Connection con;
	HttpSession se;

	public Registration(HttpSession session) {
		try {

			Class.forName("com.mysql.jdbc.Driver"); // load the drivers
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/events", "root", "tiger");
			// connection with data base
			se = session;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String Registration(String name, String phone, String email, String pw) {
		PreparedStatement ps;
		String status = "";
		try {
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			rs = st.executeQuery("select * from users where phone='" + phone + "' or email='" + email + "';");
			boolean b = rs.next();
			if (b) {
				status = "existed";
			} else {
				ps = (PreparedStatement) con
						.prepareStatement("insert into users (name,email,phone,password) values(?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, email);
				ps.setString(3, phone);
				ps.setString(4, pw);
				int a = ps.executeUpdate();
				if (a > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String login(String email, String pass) {
		// TODO Auto-generated method stub
		String status1 = "", id = "";
		String name = "", emails = "";

		try {
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();

			rs = st.executeQuery("select * from users  where email='" + email + "' and password='" + pass + "';");
			boolean b = rs.next();
			if (b == true) {
				id = rs.getString("sl_no");
				name = rs.getString("name");
				emails = rs.getString("email");
				se.setAttribute("uname", name);
				se.setAttribute("email", emails);
				se.setAttribute("id", id);
				status1 = "success";
			} else {
				status1 = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status1;
	}

	public String update(String name, String pno, String email) {
		String status = "";
		Statement st = null;
		ResultSet rs = null;
		try {
			st = con.createStatement();
			st.executeUpdate("update  users set name='" + name + "',phone='" + pno + "',email='" + email
					+ "' where sl_no= '" + se.getAttribute("id") + "' ");
			se.setAttribute("uname", name);
			status = "success";
		} catch (Exception e) {
			status = "failure";
			e.printStackTrace();
		}

		return status;
	}

	public ArrayList<Student> getUserinfo(String id) {
		Statement st = null;
		ResultSet rs = null;
		ArrayList<Student> al = new ArrayList<Student>();
		try {
			st = con.createStatement();
			String qry = "select * from users where sl_no = '" + id + "';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Student p = new Student();
				p.setId(rs.getString("sl_no"));
				p.setName(rs.getString("name"));
				p.setemail(rs.getString("email"));
				p.setphone(rs.getString("phone"));
				p.setdate(rs.getString("registration_datetime"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Student> getUserDetails() {
		Statement st;
		ResultSet rs;
		ArrayList<Student> al = new ArrayList<Student>();
		try {
			st = con.createStatement();
			String qry = "select *," + "date_format(registration_datetime,'%b %d, %Y') as date1"
					+ " from users where sl_no not in(1);";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Student p = new Student();
				p.setId(rs.getString("sl_no"));
				p.setName(rs.getString("name"));
				p.setemail(rs.getString("email"));
				p.setphone(rs.getString("phone"));
				p.setdate(rs.getString("date1"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public String delete(int id) {
		int count = 0;
		Statement st = null;
		String status = "";
		try {
			st = con.createStatement();
			count = st.executeUpdate("delete from users where " + "sl_no='" + id + "'");
			if (count > 0) {
				status = "success";
			} else {
				status = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public String ForgotPassword(String mail, String pw) {
		String status = "";
		try {
			Statement st = con.createStatement();

			int rspw = st.executeUpdate("update users  set password='" + pw + "' where email='" + mail + "';");
			if (rspw > 0) {
				status = "success";
			} else {
				status = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String getPassword(String email, String oldPass) {
		// TODO Auto-generated method stub
		String status = "";
		PreparedStatement ps = null;
		ResultSet rs = null;
		String query = "select * from users where email=? and password=?";
		try {
			ps = con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, oldPass);
			rs = ps.executeQuery();
			if (rs.next()) {
				// se.setAttribute("pwd", rs.getString(5));
				status = "success";
			} else {
				status = "failed";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// System.out.println(status);
		return status;
	}

	public String resetPassword(String email, String pwd) {
		// TODO Auto-generated method stub
		String status = "";
		PreparedStatement ps = null;
		boolean res;
		try {
			ps = con.prepareStatement("update users set password =  ? where  email =  ?");
			ps.setString(1, pwd);
			ps.setString(2, email);
			int rc = ps.executeUpdate();
			if (rc > 0) {
				status = "success";
			} else {
				status = "failed";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}

	public Student getInfo() {
		Statement st = null;
		ResultSet rs = null;
		Student s = null;
		try {
			st = con.createStatement();
			rs = st.executeQuery("select * from users where sl_no= '" + se.getAttribute("id") + "'");
			boolean b = rs.next();
			if (b == true) {
				s = new Student();
				s.setName(rs.getString("name"));
				s.setphone(rs.getString("phone"));
				s.setemail(rs.getString("email"));
			} else {
				s = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return s;
	}

	public String addEvent(String img, String name, String cost, String details, String category) {
	
		String status = "";
		try {
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			rs = st.executeQuery("select * from event where event_name='" + name + "';");
			boolean b = rs.next();
			if (b)
				status = "Already Added";
			else {
				PreparedStatement ps;
				ps = (PreparedStatement) con.prepareStatement("insert into event values (0,?,?,?,?,?,now())");
				ps.setString(1, img);
				ps.setString(2, name);
				ps.setString(3, cost);
				ps.setString(4, details);
				ps.setString(5, category);
				int a = ps.executeUpdate();
				if (a > 0)
					status = "Submitted";
				else
					status = "Failed";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String delEvent(String category) {
		int count = 0;
		Statement st = null;
		String status = "";
		try {
			st = con.createStatement();
			count = st.executeUpdate("delete from event where " + "event_category='" + category + "'");
			if (count > 0) {
				status = "success";
			} else {
				status = "failed";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	public ArrayList<Events> getEventList() {
		ArrayList<Events> al = new ArrayList<Events>();
		try {
			ResultSet rs = null;
			Statement st = null;
			st = con.createStatement();
			String qry = " select event_img, event_category from event;";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				System.out.println("hello");
				Events d = new Events();				
				d.setEvent_img(rs.getString("event_img"));
				d.setEvent_category(rs.getString("event_category"));
				al.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}
	/*public ArrayList<Dproduct> get_eventinfo(String event_category) {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			String qry = " select * from events where event_category='" + event_category + "';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Dproduct d = new Dproduct();
				d.setP_id(rs.getString("event_id")); // 1..r---db 2.. pass the data or value to Dproduct class set
														// method
				d.setP_image(rs.getString("event_img"));
				d.setP_name(rs.getString("event_name"));
				d.setP_cost(rs.getString("event_cost"));
				d.setP_details(rs.getString("event_details"));
				al.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}*/
	public ArrayList<Dproduct> get_eventinfo(String event_category) {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			String qry = " select * from event where event_category='" + event_category + "';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				System.out.println("hello");
				Dproduct d = new Dproduct();
				d.setP_id(rs.getInt("event_id")); // 1..r---db 2.. pass the data or value to Dproduct class set
														// method
				d.setP_image(rs.getString("event_img"));
				d.setP_name(rs.getString("event_name"));
				d.setP_cost(rs.getInt("event_cost"));
				d.setP_details(rs.getString("event_details"));
				al.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}
	
	public Dproduct getEventFormInfo(String event_id) {
        Statement st = null;
        ResultSet rs = null;
        Dproduct s = null;
        try {
            st = con.createStatement();
            rs = st.executeQuery("select * from event where event_id= '" + event_id + "'");
            boolean b = rs.next();
            if (b == true) {
            	
                s = new Dproduct();
                s.setP_name(rs.getString("event_name"));
                s.setP_cost(Integer.parseInt(rs.getString("event_cost")));
            } else {
                s = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return s;
    }

}