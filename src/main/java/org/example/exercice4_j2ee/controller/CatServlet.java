package org.example.exercice4_j2ee.controller;

import java.io.*;
import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.example.exercice4_j2ee.model.Cat;

@WebServlet(name = "formCatServlet", value = "/form-cat")
public class CatServlet extends HttpServlet {

    List<Cat> catList = new ArrayList<>();

    public void init() {
            catList.add(new Cat("Mimi", "Siamois", "Poisson", LocalDate.of(2018, 12, 12)));
            catList.add(new Cat("Felix", "Chartreux", "Souris", LocalDate.of(2019, 10, 10)));
            catList.add(new Cat("Nala", "Persan", "Thon", LocalDate.of(2020, 11, 11)));
            catList.add(new Cat("Simba", "Maine Coon", "Croquettes", LocalDate.of(2021, 11,12)));
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        String favorite = req.getParameter("favoriteMeal");
        String dateOfBirthStr = req.getParameter("dateOfBirth");
        LocalDate dateOfBirth = LocalDate.parse(dateOfBirthStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        catList.add(new Cat(name, breed, favorite, dateOfBirth));

        req.setAttribute("catList", catList);

        getServletContext().getRequestDispatcher("/list.jsp").forward(req, res);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {


        getServletContext().getRequestDispatcher("/form.jsp").forward(req, res);
    }


}