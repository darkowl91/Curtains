package com.home.model.account.phone;

public enum Type {

    MOBILE("com.home.model.account.phone.Type.MOBILE"),
    HOME("com.home.model.account.phone.Type.HOME"),
    WORK("com.home.model.account.phone.Type.WORK");

    private String value;

    private Type(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
