package Controller;


import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.ServletRegistration;
import jakarta.servlet.annotation.WebListener;

import java.io.PrintWriter;
import java.util.Map;

@WebListener
public class MainContext implements ServletContextListener {
    public MainContext() {}
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();


        Map<String, ? extends ServletRegistration> registrations = context.getServletRegistrations();

        for (String key : registrations.keySet()) {
            ServletRegistration registration = registrations.get(key);
            System.out.println("Name: " + registration.getName());
            System.out.println("<br>Mappings:");
            for (String mapping : registration.getMappings()) {
                System.out.println(mapping);
            }

        }

    }
}
//sembra che il mio server non esponga le servlet
//la mia config di intellij usa un war_exploded, come configuro il tutto affinche i miei end poin vengano esposti?
