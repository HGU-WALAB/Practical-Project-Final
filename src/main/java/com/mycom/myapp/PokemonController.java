package com.mycom.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
//@RequestMapping(value="/poke")
public class PokemonController {

    @Autowired
    PokemonServiceImpl pokemonService;

    @RequestMapping(value="/list",method = RequestMethod.GET)
    public String pokemonList (Model model){
        model.addAttribute("list" , pokemonService.getPokemonList());
        return "list";
    }

    @RequestMapping(value="/add",method = RequestMethod.GET)
    public String addPokemon (){
        return "addpostform";
    }

    @RequestMapping(value="/addok",method = RequestMethod.POST)
    public String addPokemonOK (PokemonVO vo){
        if(pokemonService.insertPokemon(vo)==0){
            System.out.println("데이터 추가 실패");
        }
        else{
            System.out.println("데이터 추가 성공");
        }
        return "redirect:list";
    }

    @RequestMapping(value="/editform/{id}",method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        PokemonVO pokemonVO = pokemonService.getPokemon(id);
        model.addAttribute("pokemonVO",pokemonVO);
        return "editform";
    }
    @RequestMapping(value= "/editok" , method=RequestMethod.POST)
    public String editPostOk(PokemonVO vo){
        if(pokemonService.updatePokemon(vo)==0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value= "/deleteok/{id}" , method=RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id){
        if(pokemonService.deletePokemon(id)==0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:../list";
    }


}
