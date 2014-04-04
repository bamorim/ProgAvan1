package data;


import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author bamorim
 */
public class ApoliceStorage {
    // Declaring singleton pattern
    private LinkedList<Apolice> apolices;
    private static ApoliceStorage instance = null;
    protected ApoliceStorage(){
        apolices = new LinkedList<Apolice>();
    }
    public static ApoliceStorage getInstance(){
        if(instance == null){
            instance = new ApoliceStorage();
        }
        return instance;
    }
    
    public List<Apolice> getAllApolices(){
        return apolices;
    }
    
    public void deleteAt(int line){
        apolices.remove(line);
    }
    
    public void add(String id, Apolice.Status status){
        apolices.add(new Apolice(id, status));
        Collections.sort(apolices);
    }
}
