package com.xmgh.web.controller;

import com.xmgh.web.domain.Country;

import java.util.List;

/**
 * Created by larry on 15/12/17.
 */
public class CountryController extends BaseController {

    public void addOrUpdate() {
        String name = getPara("name");
        String englishName = getPara("englishName");
        Integer id = getParaToInt("id");

        Country country = new Country();
        country.set("name", name);
        country.set("englishname", englishName);
        if(id == null || id == 0) {
            // add
            renderSuccessFlag(country.save());
        } else {
            // updates
            country.set("id", id);
            renderSuccessFlag(country.update());
        }
    }

    public void del() {
        Integer id = getParaToInt("id");
        if(id != null && id != 0) {
            renderSuccessFlag(Country.dao.deleteById(id));
        } else {
            renderSuccessFlag(false);
        }
    }

    public void getAllCountry() {
        List<Country> countries = Country.dao.find("select * from t_country");
        renderJson(countries);
    }

}
