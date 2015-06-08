package error;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SimpleErrorPage {
    String msg = "";

    public SimpleErrorPage() {
    }

    public SimpleErrorPage(HttpServletRequest request, HttpServletResponse response, String msg) {
        this.msg = msg;
        execute(request, response);
    }

    public void execute(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/errorPage.jsp");
        request.setAttribute("errorMsg",this.msg);

        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

}
