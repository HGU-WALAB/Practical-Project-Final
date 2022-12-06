package com.mycom.myapp;

import java.util.List;

public interface PokemonService {

    public  int insertPokemon(PokemonVO vo);
    public int deletePokemon(int PokemonID);
    public int updatePokemon(PokemonVO vo);
    public  PokemonVO getPokemon(int PokemonID);
    public  List<PokemonVO> getPokemonList();

}
