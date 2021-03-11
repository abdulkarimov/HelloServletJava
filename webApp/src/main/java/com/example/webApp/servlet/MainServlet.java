package com.example.webApp.servlet;

import com.example.webApp.dao.DbManager;
import com.example.webApp.entity.Car;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@WebServlet(value = "/index")
public class MainServlet extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(MainServlet.class.getName());


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 /*   response.setContentType("text/html; charset = UTF-8");

        String name = request.getParameter("name");
        String lvl = request.getParameter("level");


        System.out.println(name);

        LOGGER.info(name + " " + lvl);*/
        List<Car> cars = DbManager.getCars();

        request.setAttribute("mashina", cars);

        request.getRequestDispatcher("/cars.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name = request.getParameter("model");
        Double volume = Double.parseDouble(request.getParameter("volume"));
        Integer price = Integer.parseInt(request.getParameter("price"));

        Car car = new Car(null, name, volume, price);

        DbManager.addCar(car);


        response.sendRedirect("/");


    }
}
