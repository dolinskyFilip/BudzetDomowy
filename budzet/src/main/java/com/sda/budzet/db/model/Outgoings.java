package com.sda.budzet.db.model;

public class Outgoings {
    private int outgoingsID;
    private int userID;
    private String outgoingsCategory;
    private double outgoingsAmount;

    public int getOutgoingsID() {
        return outgoingsID;
    }

    public void setOutgoingsID(int outgoingsID) {
        this.outgoingsID = outgoingsID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getOutgoingsCategory() {
        return outgoingsCategory;
    }

    public void setOutgoingsCategory(String outgoingsCategory) {
        this.outgoingsCategory = outgoingsCategory;
    }

    public double getOutgoingsAmount() {
        return outgoingsAmount;
    }

    public void setOutgoingsAmount(double outgoingsAmount) {
        this.outgoingsAmount = outgoingsAmount;
    }
}
