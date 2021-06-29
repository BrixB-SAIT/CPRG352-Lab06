package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ShoppingListServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Create a session
        HttpSession session = request.getSession();
        String logOut = request.getParameter("logout");
        //Get user "name" input
        String username = (String)session.getAttribute("in_user");
        
        //If logOut is clicked, the session ends and get redirected to register to login again. And vice versa if its not clicked.
        if(logOut != null && logOut.equals("logout")){
        session.invalidate();
        session = request.getSession();
        getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
        
        //validation is the username is not entered they are redirected to register.jsp
        else if(username != null){
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        }
        
        else{
           getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //create a session
        HttpSession session = request.getSession();
        
        //Call the useraction variable to see which one is checked
        String userAction = request.getParameter("userAction");
        
        if(userAction != null && userAction.equals("Register")){
            ArrayList<String> shoppingList = new ArrayList<>();
            session.setAttribute("shoppingList", shoppingList);
            String username = request.getParameter("in_user");
            session.setAttribute("showUser" , username);
            
        }
        else if(userAction != null && userAction.equals("Add")){
        String addList = request.getParameter("in_item");
        ArrayList<String> shoppingList = (ArrayList<String>) session.getAttribute("shoppingList");
        shoppingList.add(addList);
        session.setAttribute("shoppingList", shoppingList);
      
    
        }
        else if(userAction != null && userAction.equals("Delete")){
         ArrayList<String> shoppingList = (ArrayList<String>) session.getAttribute("shoppingList");
         String listRemove = request.getParameter("boxes");
   
           if (!listRemove.equals("")) {
                shoppingList.remove(listRemove);    
            }
        session.setAttribute("shoppingList", shoppingList);
        
         
         
        }
        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        return;
    }

}