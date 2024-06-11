package org.example.exercice4_j2ee.model;

import java.time.LocalDate;

public class Cat {
    private String name;
    private String breed;
    private String favoriteMeal;
    private LocalDate dateOfBirth;


    public Cat(String name, String breed, String favoriteMeal, LocalDate dateOfBirth)  {
        this.name = name;
        this.breed = breed;
        this.favoriteMeal = favoriteMeal;
        this.dateOfBirth = dateOfBirth;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public String getFavoriteMeal() {
        return favoriteMeal;
    }

    public void setFavoriteMeal(String favoriteMeal) {
        this.favoriteMeal = favoriteMeal;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
}
