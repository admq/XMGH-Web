package com.xmgh.web;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by root on 2015/9/19.
 */
public class Table {
    private String name;
    private Map<String, String> columns;
    private String remarks;

    public Table() {
        this.columns = new HashMap<String, String>();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<String, String> getColumns() {
        return columns;
    }

    public void setColumns(Map<String, String> columns) {
        this.columns = columns;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public void addColumn(String cName, String cType) {
        columns.put(cName, cType);
    }
}
