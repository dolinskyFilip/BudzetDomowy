package com.sda.budzet.db.repository;


import com.sda.budzet.db.model.Category;
import com.sda.budzet.db.model.Outgoings;

import java.util.List;

public interface OutgoingsRepository {
    void save(Outgoings outgoings);
    List<Category> getCategoryList();


}
