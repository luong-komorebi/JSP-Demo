package jsp.tutorial;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

public class CookiesUtils {

	public static void demoUserCookie(HttpServletRequest request, HttpServletResponse response, JspWriter out)
			throws IOException {
		boolean found = false;

		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			String userName = null;
			String lastLoginDatetime = null;
			out.println("<h3>Cookies: </h3>");

			for (int i = 0; i < cookies.length; i++) {
				out.println(cookies[i].getName() + " : " + cookies[i].getValue() + "<br>");
				if (cookies[i].getName().equals("userName")) {
					userName = cookies[i].getValue();
				} else if (cookies[i].getName().equals("lastLoginDatetime")) {
					lastLoginDatetime = cookies[i].getValue();
				}
			}

			if (userName != null) {
				found = true;
				out.println("<h4>Last login info:</h4>");
				out.println("User Name: " + userName + "<br>");
				out.println("Last Login Datetime: " + lastLoginDatetime + "<br>");
			}
		}

		if (!found) {
			out.println("<h3>No cookies founds!, write some cookies into client computer</h3>");
			String userName = "someUserName";

			Cookie cookieUserName = new Cookie("userName", userName);

			DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
			Date now = new Date();

			String lastLoginDatetime = df.format(now);

			Cookie cookieLoginDatetime = new Cookie("lastLoginDatetime", lastLoginDatetime);

			cookieUserName.setMaxAge(24 * 60 * 60);
			cookieLoginDatetime.setMaxAge(24 * 60 * 60);

			response.addCookie(cookieUserName);
			response.addCookie(cookieLoginDatetime);

		}
	}

}
