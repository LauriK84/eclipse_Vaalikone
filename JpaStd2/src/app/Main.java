package app;

import java.util.Scanner;

import javax.persistence.*;
import entity.*;


public class Main {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Give breed: ");
        String breed = sc.nextLine();
       
        System.out.println("Give weight: ");
        String w = sc.nextLine();
        int weight = 0;
       
        try {
            weight = Integer.parseInt(w);
        } catch (Exception e) {
            weight = -1;
        }

        Dogbreed dogbr = new Dogbreed();
        dogbr.setBreed(breed);
        dogbr.setWeight(weight);
       
       
       
       
        EntityManagerFactory emf = null;
        EntityManager em = null;
       
        try {
            emf =  Persistence.createEntityManagerFactory("JpaStd2");
            em = emf.createEntityManager();
           
            em.getTransaction().begin();
            em.persist(dogbr);
            em.getTransaction().commit();
            em.close();
           
        } catch (Exception e) {
            em.getTransaction().rollback();
            em.close();
        }
       
       
    }

}
