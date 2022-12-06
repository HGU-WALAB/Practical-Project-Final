package com.mycom.myapp;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

class PokemonRowMapper implements RowMapper<PokemonVO> {
    
    @Override
    public PokemonVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        PokemonVO vo = new PokemonVO();
        vo.setPokemonID(rs.getInt("PokemonID"));
        vo.setCP(rs.getInt("CP"));
        vo.setPhoto(rs.getString("Photo"));
        vo.setPokemonName(rs.getString("PokemonName"));
        vo.setGender(rs.getString("Gender"));
        vo.setAge(rs.getInt("Age"));
        vo.setWeight(rs.getInt("Weight"));
        vo.setHabitat(rs.getString("Habitat"));
        vo.setCharacteristic(rs.getString("Characteristic"));
        vo.setCatchdate(rs.getDate("Catchdate"));
        return vo;
    }
}
