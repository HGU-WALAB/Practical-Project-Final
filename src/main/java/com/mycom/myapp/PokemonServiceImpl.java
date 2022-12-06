package com.mycom.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PokemonServiceImpl implements PokemonService{
    @Autowired
    PokemonDAO pokemonDAO;


    @Override
    public int insertPokemon(PokemonVO vo){
        return pokemonDAO.insertPokemon(vo);
    }

    @Override
    public int deletePokemon(int PokemonID){
        return pokemonDAO.deletePokemon(PokemonID);
    }

    @Override
    public int updatePokemon(PokemonVO vo) {
        return pokemonDAO.updatePokemon(vo);
    }

    @Override
    public PokemonVO getPokemon(int PokemonID) {
        return pokemonDAO.getPokemon(PokemonID);
    }

    @Override
    public List<PokemonVO> getPokemonList() {
        return pokemonDAO.getPokemonList();
    }
}
