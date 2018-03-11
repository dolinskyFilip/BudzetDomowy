package com.sda.kino.dto;

import java.util.Date;

public class SeanceDto {
    private int id;
    private Date date;

    public SeanceDto(int id, Date date) {
        this.id = id;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
