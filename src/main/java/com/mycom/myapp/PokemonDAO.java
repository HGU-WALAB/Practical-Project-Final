package com.mycom.myapp;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PokemonDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Autowired
    SqlSession sqlSession;
//    public int insertPokemon(PokemonVO vo){
//        String sql = "insert into Pokemon (CP , Photo , PokemonName , Gender , Age , Weight , Habitat , Characteristic) values ("
//                + "'" + vo.getCP() + "',"
//                + "'" + vo.getPhoto() + "',"
//                + "'" + vo.getPokemonName() + "',"
//                + "'" + vo.getGender() + "',"
//                + "'" + vo.getAge() + "',"
//                + "'" + vo.getWeight() + "',"
//                + "'" + vo.getHabitat() + "',"
//                + "'" + vo.getCharacteristic() + "')";
//        return jdbcTemplate.update(sql);
//    }
    public int insertPokemon(PokemonVO vo){
        int result = sqlSession.insert("Pokemon.insertPokemon",vo);
        return result;
    }

    public int deletePokemon(int PokemonID){
        int result = sqlSession.delete("Pokemon.deletePokemon",PokemonID);
        return result;
    }

    public int updatePokemon(PokemonVO vo){
        int result = sqlSession.update("Pokemon.updatePokemon",vo);
        return result;
    }

//    public int deletePokemon(int PokemonID){
//        String sql = "delete from Pokemon where PokemonID= "+PokemonID;
//        return jdbcTemplate.update(sql);
//    }

//    public int updatePokemon(PokemonVO vo){
//        String sql = "update Pokemon set CP='" + vo.getCP() + "', "
//                + "Photo= '" + vo.getPhoto() + "',"
//                + "PokemonName= '" + vo.getPokemonName() + "',"
//                + "Gender= '" + vo.getGender() + "',"
//                + "Age= '" + vo.getAge() + "',"
//                + "Weight= '" + vo.getWeight() + "',"
//                + "Habitat= '" + vo.getHabitat() + "',"
//                + "Characteristic= '" + vo.getCharacteristic() + "' where PokemonID= " + vo.getPokemonID();
//        return jdbcTemplate.update(sql);
//    }

//    public PokemonVO getPokemon(int PokemonID){
//        String sql = "select * from Pokemon where PokemonID=" + PokemonID;
//        return jdbcTemplate.queryForObject(sql, new PokemonRowMapper());
//    }
//
//    public List<PokemonVO> getPokemonList(){
//        String sql = "select * from Pokemon order by Catchdate desc";
//        return jdbcTemplate.query(sql , new PokemonRowMapper());
//    }

    public PokemonVO getPokemon(int PokemonID){
        PokemonVO one = sqlSession.selectOne("Pokemon.getPokemon",PokemonID);
        return one;
    }

    public List<PokemonVO> getPokemonList(){
        List<PokemonVO> list = sqlSession.selectList("Pokemon.getPokemonList");
        return list;
    }

}
