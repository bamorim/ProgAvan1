package data;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author bamorim
 */
public class Apolice implements Comparable<Apolice> {
    public static enum Status{
        APROVADA,
        NEGADA
    }
    
    private Status status;
    private String id;
    
    public Apolice(String id, Status status){
        this.id = id;
        this.status = status;
    }
    
    public String getId(){
        return this.id;
    }
    
    public Status getStatus(){
        return this.status;
    }
    
    @Override
    public int compareTo(Apolice other){
        return this.id.compareTo(other.id);
    }
}
