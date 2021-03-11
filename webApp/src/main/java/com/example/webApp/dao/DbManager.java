package com.example.webApp.dao;

import com.example.webApp.entity.Car;

import java.util.ArrayList;
import java.util.List;

public class DbManager {

    private static List<Car> cars = new ArrayList<>();

    private static Integer id = 5;
    static {
        cars.add(new Car(1,"Mersedes", 5.5, 250000));
        cars.add(new Car(2,"Toyota", 2.5, 2000));
        cars.add(new Car(3,"BMW", 3.5, 2200));
        cars.add(new Car(4,"Lada", 1.6, 1000));
    }

    public static void addCar(Car car)
    {
          car.setId(id++);
          cars.add(car);
    }

    public static List<Car> getCars() {
        return cars;
    }
}
