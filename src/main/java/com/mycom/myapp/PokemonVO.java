package com.mycom.myapp;

import java.util.Date;

public class PokemonVO {
    private int PokemonID;
    private int CP;
    private String Photo;
    private String PokemonName;
    private String Gender;
    private int Age;
    private int Weight;
    private String Habitat;
    private String Characteristic;
    private Date Catchdate;


    public int getPokemonID() {
        return PokemonID;
    }

    public void setPokemonID(int PokemonID) {
        this.PokemonID = PokemonID;
    }

    public int getCP() {
        return CP;
    }

    public void setCP(int CP) {
        this.CP = CP;
    }

    public String getPhoto() {
        return Photo;
    }

    public void setPhoto(String Photo) {
        this.Photo = Photo;
    }

    public String getPokemonName() {
        return PokemonName;
    }

    public void setPokemonName(String pokemonName) {
        PokemonName = pokemonName;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public int getAge() {
        return Age;
    }

    public void setAge(int age) {
        Age = age;
    }

    public int getWeight() {
        return Weight;
    }

    public void setWeight(int weight) {
        Weight = weight;
    }

    public String getHabitat() {
        return Habitat;
    }

    public void setHabitat(String habitat) {
        Habitat = habitat;
    }

    public String getCharacteristic() {
        return Characteristic;
    }

    public void setCharacteristic(String characteristic) {
        Characteristic = characteristic;
    }

    public Date getCatchdate() {
        return Catchdate;
    }

    public void setCatchdate(Date catchdate) {
        Catchdate = catchdate;
    }
}
